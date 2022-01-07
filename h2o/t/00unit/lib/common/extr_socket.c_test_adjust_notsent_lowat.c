
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int h2o_socket_t ;
struct TYPE_3__ {unsigned int cur; int ret; int call_cnt; } ;
struct TYPE_4__ {TYPE_1__ minimize_notsent_lowat; } ;


 TYPE_2__ cb_ret_vars ;

__attribute__((used)) static int test_adjust_notsent_lowat(h2o_socket_t *sock, unsigned notsent_lowat)
{
    cb_ret_vars.minimize_notsent_lowat.cur = notsent_lowat;
    ++cb_ret_vars.minimize_notsent_lowat.call_cnt;
    return cb_ret_vars.minimize_notsent_lowat.ret;
}
