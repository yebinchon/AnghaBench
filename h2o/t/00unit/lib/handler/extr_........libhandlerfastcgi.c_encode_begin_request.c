
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct st_fcgi_begin_request_body_t {int reserved; int flags; int role; } ;


 int FCGI_BEGIN_REQUEST ;
 int FCGI_BEGIN_REQUEST_BODY_SIZE ;
 int FCGI_RECORD_HEADER_SIZE ;
 int encode_record_header (void*,int ,int ,int ) ;
 int encode_uint16 (int *,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void encode_begin_request(void *p, uint16_t reqId, uint16_t role, uint8_t flags)
{
    encode_record_header(p, FCGI_BEGIN_REQUEST, reqId, FCGI_BEGIN_REQUEST_BODY_SIZE);
    struct st_fcgi_begin_request_body_t *body = (void *)((char *)p + FCGI_RECORD_HEADER_SIZE);
    encode_uint16(&body->role, role);
    body->flags = flags;
    memset(body->reserved, 0, sizeof(body->reserved));
}
