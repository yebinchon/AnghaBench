
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct st_fcgi_record_header_t {scalar_t__ reserved; scalar_t__ paddingLength; int contentLength; int requestId; int type; int version; } ;


 int FCGI_VERSION_1 ;
 int encode_uint16 (int *,int ) ;

__attribute__((used)) static void encode_record_header(void *p, uint8_t type, uint16_t reqId, uint16_t sz)
{
    struct st_fcgi_record_header_t *header = p;
    header->version = FCGI_VERSION_1;
    header->type = type;
    encode_uint16(&header->requestId, reqId);
    encode_uint16(&header->contentLength, sz);
    header->paddingLength = 0;
    header->reserved = 0;
}
