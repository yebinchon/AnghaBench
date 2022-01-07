
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXITING ;
 int flush (int *,int ,int ) ;
 int flush_scheduled_work () ;

void
aoedev_exit(void)
{
 flush_scheduled_work();
 flush(((void*)0), 0, EXITING);
}
