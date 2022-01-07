
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmdline_find_option_bool (char*) ;
 int console_init () ;
 int copy_boot_params () ;
 int detect_memory () ;
 int die () ;
 int go_to_protected_mode () ;
 int init_heap () ;
 int keyboard_init () ;
 int puts (char*) ;
 int query_apm_bios () ;
 int query_edd () ;
 int query_ist () ;
 int set_bios_mode () ;
 int set_video () ;
 scalar_t__ validate_cpu () ;

void main(void)
{

 copy_boot_params();


 console_init();
 if (cmdline_find_option_bool("debug"))
  puts("early console in setup code\n");


 init_heap();


 if (validate_cpu()) {
  puts("Unable to boot - please use a kernel appropriate "
       "for your CPU.\n");
  die();
 }


 set_bios_mode();


 detect_memory();


 keyboard_init();


 query_ist();
 set_video();


 go_to_protected_mode();
}
