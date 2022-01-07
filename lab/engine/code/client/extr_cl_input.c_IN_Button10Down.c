
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_KeyDown (int *) ;
 int * in_buttons ;

void IN_Button10Down(void) {IN_KeyDown(&in_buttons[10]);}
