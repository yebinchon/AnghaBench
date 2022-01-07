
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ vid_mode; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;


 scalar_t__ ASK_VGA ;
 int RESET_HEAP () ;
 TYPE_2__ boot_params ;
 scalar_t__ do_restore ;
 scalar_t__ mode_menu () ;
 int printf (char*,scalar_t__) ;
 int probe_cards (int ) ;
 int restore_screen () ;
 int save_screen () ;
 int set_mode (scalar_t__) ;
 int store_mode_params () ;
 int vesa_store_edid () ;

void set_video(void)
{
 u16 mode = boot_params.hdr.vid_mode;

 RESET_HEAP();

 store_mode_params();
 save_screen();
 probe_cards(0);

 for (;;) {
  if (mode == ASK_VGA)
   mode = mode_menu();

  if (!set_mode(mode))
   break;

  printf("Undefined video mode number: %x\n", mode);
  mode = ASK_VGA;
 }
 boot_params.hdr.vid_mode = mode;
 vesa_store_edid();
 store_mode_params();

 if (do_restore)
  restore_screen();
}
