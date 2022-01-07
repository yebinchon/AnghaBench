
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptls_iovec_t ;
struct TYPE_5__ {int off; int * base; int is_allocated; } ;
typedef TYPE_1__ ptls_buffer_t ;
typedef int ptls_base64_decode_state_t ;
typedef int ns_rr ;
typedef int ns_msg ;
typedef int esni_name ;
typedef int answer ;


 int assert (int ) ;
 int normalize_txt (void*,int ) ;
 int ns_c_in ;
 scalar_t__ ns_initparse (int *,int,int *) ;
 int ns_msg_count (int ,int ) ;
 scalar_t__ ns_parserr (int *,int ,int ,int *) ;
 scalar_t__ ns_rr_rdata (int ) ;
 int ns_rr_rdlen (int ) ;
 int ns_s_an ;
 int ns_t_txt ;
 scalar_t__ ptls_base64_decode (char*,int *,TYPE_1__*) ;
 int ptls_base64_decode_init (int *) ;
 int ptls_buffer_dispose (TYPE_1__*) ;
 int ptls_buffer_init (TYPE_1__*,char*,int ) ;
 int ptls_iovec_init (int *,int ) ;
 int res_query (char*,int ,int ,int *,int) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static inline ptls_iovec_t resolve_esni_keys(const char *server_name)
{
    char esni_name[256], *base64;
    uint8_t answer[1024];
    ns_msg msg;
    ns_rr rr;
    ptls_buffer_t decode_buf;
    ptls_base64_decode_state_t ds;
    int answer_len;

    ptls_buffer_init(&decode_buf, "", 0);

    if (snprintf(esni_name, sizeof(esni_name), "_esni.%s", server_name) > sizeof(esni_name) - 1)
        goto Error;
    if ((answer_len = res_query(esni_name, ns_c_in, ns_t_txt, answer, sizeof(answer))) <= 0)
        goto Error;
    if (ns_initparse(answer, answer_len, &msg) != 0)
        goto Error;
    if (ns_msg_count(msg, ns_s_an) < 1)
        goto Error;
    if (ns_parserr(&msg, ns_s_an, 0, &rr) != 0)
        goto Error;
    base64 = (void *)ns_rr_rdata(rr);
    if (!normalize_txt((void *)base64, ns_rr_rdlen(rr)))
        goto Error;

    ptls_base64_decode_init(&ds);
    if (ptls_base64_decode(base64, &ds, &decode_buf) != 0)
        goto Error;
    assert(decode_buf.is_allocated);

    return ptls_iovec_init(decode_buf.base, decode_buf.off);
Error:
    ptls_buffer_dispose(&decode_buf);
    return ptls_iovec_init(((void*)0), 0);
}
