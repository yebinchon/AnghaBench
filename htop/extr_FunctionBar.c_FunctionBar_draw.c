
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FunctionBar ;


 int * CRT_colors ;
 size_t FUNCTION_BAR ;
 int FunctionBar_drawAttr (int const*,char*,int ) ;

void FunctionBar_draw(const FunctionBar* this, char* buffer) {
   FunctionBar_drawAttr(this, buffer, CRT_colors[FUNCTION_BAR]);
}
