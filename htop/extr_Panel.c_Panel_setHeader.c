
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int needsRedraw; int header; } ;
typedef TYPE_1__ Panel ;


 int * CRT_colors ;
 size_t PANEL_HEADER_FOCUS ;
 int RichString_write (int *,int ,char const*) ;

inline void Panel_setHeader(Panel* this, const char* header) {
   RichString_write(&(this->header), CRT_colors[PANEL_HEADER_FOCUS], header);
   this->needsRedraw = 1;
}
