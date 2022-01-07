
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 int FD_COMMAND_NONE ;
 scalar_t__ WARN (int,char*) ;
 scalar_t__ atomic_read (int *) ;
 int command_status ;
 int fdc_busy ;
 int fdc_wait ;
 int reschedule_timeout (int,char*) ;
 int set_fdc (int) ;
 int test_and_set_bit (int ,int *) ;
 int usage_count ;
 scalar_t__ wait_event_interruptible (int ,int) ;

__attribute__((used)) static int lock_fdc(int drive)
{
 if (WARN(atomic_read(&usage_count) == 0,
   "Trying to lock fdc while usage count=0\n"))
  return -1;

 if (wait_event_interruptible(fdc_wait, !test_and_set_bit(0, &fdc_busy)))
  return -EINTR;

 command_status = FD_COMMAND_NONE;

 reschedule_timeout(drive, "lock fdc");
 set_fdc(drive);
 return 0;
}
