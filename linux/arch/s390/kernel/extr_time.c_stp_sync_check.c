
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_sync_clock (int *) ;

int stp_sync_check(void)
{
 disable_sync_clock(((void*)0));
 return 1;
}
