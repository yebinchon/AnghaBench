
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int * do_floppy ;
 int fd_timer ;
 int floppy_work ;

__attribute__((used)) static void cancel_activity(void)
{
 do_floppy = ((void*)0);
 cancel_delayed_work_sync(&fd_timer);
 cancel_work_sync(&floppy_work);
}
