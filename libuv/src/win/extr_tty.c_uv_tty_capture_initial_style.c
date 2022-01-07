
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wAttributes; } ;
typedef TYPE_1__ CONSOLE_SCREEN_BUFFER_INFO ;


 int BACKGROUND_BLUE ;
 int BACKGROUND_GREEN ;
 int BACKGROUND_INTENSITY ;
 int BACKGROUND_RED ;
 int COMMON_LVB_REVERSE_VIDEO ;
 int FOREGROUND_BLUE ;
 int FOREGROUND_GREEN ;
 int FOREGROUND_INTENSITY ;
 int FOREGROUND_RED ;
 int uv_tty_default_bg_bright ;
 int uv_tty_default_bg_color ;
 int uv_tty_default_fg_bright ;
 int uv_tty_default_fg_color ;
 int uv_tty_default_inverse ;
 int uv_tty_default_text_attributes ;

__attribute__((used)) static void uv_tty_capture_initial_style(CONSOLE_SCREEN_BUFFER_INFO* info) {
  static int style_captured = 0;



  if (style_captured)
    return;


  uv_tty_default_text_attributes = info->wAttributes;


  if (uv_tty_default_text_attributes == 0)
    uv_tty_default_text_attributes = 7;


  uv_tty_default_fg_color = 0;
  uv_tty_default_bg_color = 0;
  uv_tty_default_fg_bright = 0;
  uv_tty_default_bg_bright = 0;
  uv_tty_default_inverse = 0;

  if (uv_tty_default_text_attributes & FOREGROUND_RED)
    uv_tty_default_fg_color |= 1;

  if (uv_tty_default_text_attributes & FOREGROUND_GREEN)
    uv_tty_default_fg_color |= 2;

  if (uv_tty_default_text_attributes & FOREGROUND_BLUE)
    uv_tty_default_fg_color |= 4;

  if (uv_tty_default_text_attributes & BACKGROUND_RED)
    uv_tty_default_bg_color |= 1;

  if (uv_tty_default_text_attributes & BACKGROUND_GREEN)
    uv_tty_default_bg_color |= 2;

  if (uv_tty_default_text_attributes & BACKGROUND_BLUE)
    uv_tty_default_bg_color |= 4;

  if (uv_tty_default_text_attributes & FOREGROUND_INTENSITY)
    uv_tty_default_fg_bright = 1;

  if (uv_tty_default_text_attributes & BACKGROUND_INTENSITY)
    uv_tty_default_bg_bright = 1;

  if (uv_tty_default_text_attributes & COMMON_LVB_REVERSE_VIDEO)
    uv_tty_default_inverse = 1;

  style_captured = 1;
}
