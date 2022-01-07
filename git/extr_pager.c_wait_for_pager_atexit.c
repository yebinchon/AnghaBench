
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wait_for_pager (int ) ;

__attribute__((used)) static void wait_for_pager_atexit(void)
{
 wait_for_pager(0);
}
