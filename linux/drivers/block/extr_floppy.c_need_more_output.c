
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MORE_OUTPUT ;
 scalar_t__ is_ready_state (int) ;
 int result () ;
 int wait_til_ready () ;

__attribute__((used)) static int need_more_output(void)
{
 int status = wait_til_ready();

 if (status < 0)
  return -1;

 if (is_ready_state(status))
  return MORE_OUTPUT;

 return result();
}
