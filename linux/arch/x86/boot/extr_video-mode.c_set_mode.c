
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int vid_mode; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;


 int EXTENDED_VGA ;
 int NORMAL_VGA ;
 int VIDEO_80x25 ;
 int VIDEO_8POINT ;
 int VIDEO_CURRENT_MODE ;
 int VIDEO_RECALC ;
 TYPE_2__ boot_params ;
 int raw_set_mode (int,int*) ;
 int vga_recalc_vertical () ;

int set_mode(u16 mode)
{
 int rv;
 u16 real_mode;


 if (mode == VIDEO_CURRENT_MODE)
  return 0;
 else if (mode == NORMAL_VGA)
  mode = VIDEO_80x25;
 else if (mode == EXTENDED_VGA)
  mode = VIDEO_8POINT;

 rv = raw_set_mode(mode, &real_mode);
 if (rv)
  return rv;

 if (mode & VIDEO_RECALC)
  vga_recalc_vertical();




 boot_params.hdr.vid_mode = real_mode;

 return 0;
}
