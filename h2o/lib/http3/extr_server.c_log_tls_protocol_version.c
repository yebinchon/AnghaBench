
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_req_t ;
typedef int h2o_iovec_t ;


 int H2O_STRLIT (char*) ;
 int h2o_iovec_init (int ) ;

__attribute__((used)) static h2o_iovec_t log_tls_protocol_version(h2o_req_t *_req)
{
    return h2o_iovec_init(H2O_STRLIT("TLSv1.3"));
}
