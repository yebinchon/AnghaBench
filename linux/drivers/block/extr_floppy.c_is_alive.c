
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINT (char*,char const*,char const*) ;
 int command_status ;
 int delayed_work_pending (int *) ;
 int fd_timeout ;
 int fdc_busy ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void is_alive(const char *func, const char *message)
{

 if (test_bit(0, &fdc_busy) && command_status < 2 &&
     !delayed_work_pending(&fd_timeout)) {
  DPRINT("%s: timeout handler died.  %s\n", func, message);
 }
}
