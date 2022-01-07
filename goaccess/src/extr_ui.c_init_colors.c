
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_colors (int) ;
 int set_normal_color () ;
 int use_default_colors () ;

void
init_colors (int force)
{

  use_default_colors ();

  set_normal_color ();

  set_colors (force);
}
