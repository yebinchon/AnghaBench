
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_KeyUp (int *) ;
 int * in_buttons ;

void IN_Button12Up(void) {IN_KeyUp(&in_buttons[12]);}
