
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINT (char*) ;
 int FD_COMMAND_NONE ;
 int cancel_delayed_work (int *) ;
 int clear_bit (int ,int *) ;
 int command_status ;
 int * cont ;
 int * do_floppy ;
 int fd_timeout ;
 int fdc_busy ;
 int fdc_wait ;
 int * raw_cmd ;
 int test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void unlock_fdc(void)
{
 if (!test_bit(0, &fdc_busy))
  DPRINT("FDC access conflict!\n");

 raw_cmd = ((void*)0);
 command_status = FD_COMMAND_NONE;
 cancel_delayed_work(&fd_timeout);
 do_floppy = ((void*)0);
 cont = ((void*)0);
 clear_bit(0, &fdc_busy);
 wake_up(&fdc_wait);
}
