
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_t ;
typedef int h2o_conn_t ;


 int * get_ptls (int *) ;
 int ptls_skip_tracing (int *) ;

__attribute__((used)) static int get_skip_tracing(h2o_conn_t *conn)
{
    ptls_t *ptls = get_ptls(conn);
    return ptls_skip_tracing(ptls);
}
