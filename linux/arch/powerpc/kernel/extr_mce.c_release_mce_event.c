
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_mce_event (int *,int) ;

void release_mce_event(void)
{
 get_mce_event(((void*)0), 1);
}
