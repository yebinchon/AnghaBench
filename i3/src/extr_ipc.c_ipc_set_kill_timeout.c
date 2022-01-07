
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ev_tstamp ;


 int kill_timeout ;

void ipc_set_kill_timeout(ev_tstamp new) {
    kill_timeout = new;
}
