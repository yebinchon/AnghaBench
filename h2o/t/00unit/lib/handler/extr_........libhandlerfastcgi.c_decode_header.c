
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_fcgi_record_header_t {void* contentLength; void* requestId; } ;


 void* htons (void*) ;
 int memcpy (struct st_fcgi_record_header_t*,void const*,int) ;

__attribute__((used)) static void decode_header(struct st_fcgi_record_header_t *decoded, const void *s)
{
    memcpy(decoded, s, sizeof(*decoded));
    decoded->requestId = htons(decoded->requestId);
    decoded->contentLength = htons(decoded->contentLength);
}
