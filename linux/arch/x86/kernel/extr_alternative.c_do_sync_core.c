
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sync_core () ;

__attribute__((used)) static void do_sync_core(void *info)
{
 sync_core();
}
