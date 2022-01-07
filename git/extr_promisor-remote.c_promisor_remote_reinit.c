
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ initialized ;
 int promisor_remote_clear () ;
 int promisor_remote_init () ;

void promisor_remote_reinit(void)
{
 initialized = 0;
 promisor_remote_clear();
 promisor_remote_init();
}
