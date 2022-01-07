
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_req_t ;
typedef int h2o_iovec_t ;


 int h2o_iovec_init (int *,int ) ;

__attribute__((used)) static h2o_iovec_t log_session_id(h2o_req_t *_req)
{

    return h2o_iovec_init(((void*)0), 0);
}
