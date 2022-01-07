
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ has_colors () ;
 int init_dialog_colors () ;
 int set_mono_theme () ;
 int set_theme (char const*) ;
 int start_color () ;

__attribute__((used)) static void color_setup(const char *theme)
{
 int use_color;

 use_color = set_theme(theme);
 if (use_color && has_colors()) {
  start_color();
  init_dialog_colors();
 } else
  set_mono_theme();
}
