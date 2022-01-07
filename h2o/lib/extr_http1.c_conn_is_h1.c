
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * callbacks; } ;
typedef TYPE_1__ h2o_conn_t ;


 int h1_callbacks ;

__attribute__((used)) static int conn_is_h1(h2o_conn_t *conn)
{
    return conn->callbacks == &h1_callbacks;
}
