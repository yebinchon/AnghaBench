
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jazz_write_command (int) ;
 int jazz_write_output (int) ;
 int kb_wait () ;

void jazz_machine_restart(char *command)
{
 while(1) {
  kb_wait();
  jazz_write_command(0xd1);
  kb_wait();
  jazz_write_output(0x00);
 }
}
