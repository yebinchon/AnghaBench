
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int orderly_poweroff (int) ;
 int pr_emerg (char*) ;
 int pr_err (char*,char) ;

__attribute__((used)) static void handle_system_shutdown(char event_modifier)
{
 switch (event_modifier) {
 case 129:
  pr_emerg("Power off requested\n");
  orderly_poweroff(1);
  break;

 case 128:
  pr_emerg("Loss of system power detected. System is running on"
    " UPS/battery. Check RTAS error log for details\n");
  orderly_poweroff(1);
  break;

 case 130:
  pr_emerg("Loss of system critical functions detected. Check"
    " RTAS error log for details\n");
  orderly_poweroff(1);
  break;

 case 131:
  pr_emerg("High ambient temperature detected. Check RTAS"
    " error log for details\n");
  orderly_poweroff(1);
  break;

 default:
  pr_err("Unknown power/cooling shutdown event (modifier = %d)\n",
   event_modifier);
 }
}
