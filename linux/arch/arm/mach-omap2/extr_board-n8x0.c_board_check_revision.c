
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOKIA_N800 ;
 int NOKIA_N810 ;
 int NOKIA_N810_WIMAX ;
 int board_caps ;
 scalar_t__ of_machine_is_compatible (char*) ;
 int pr_err (char*) ;

__attribute__((used)) static void board_check_revision(void)
{
 if (of_machine_is_compatible("nokia,n800"))
  board_caps = NOKIA_N800;
 else if (of_machine_is_compatible("nokia,n810"))
  board_caps = NOKIA_N810;
 else if (of_machine_is_compatible("nokia,n810-wimax"))
  board_caps = NOKIA_N810_WIMAX;

 if (!board_caps)
  pr_err("Unknown board\n");
}
