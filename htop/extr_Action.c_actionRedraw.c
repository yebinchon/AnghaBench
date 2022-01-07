
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Htop_Reaction ;


 int HTOP_REDRAW_BAR ;
 int HTOP_REFRESH ;
 int clear () ;

__attribute__((used)) static Htop_Reaction actionRedraw() {
   clear();
   return HTOP_REFRESH | HTOP_REDRAW_BAR;
}
