
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FunctionBar ;


 int FunctionBar_EnterEscEvents ;
 int FunctionBar_EnterEscKeys ;
 int * FunctionBar_new (char const**,int ,int ) ;

FunctionBar* FunctionBar_newEnterEsc(const char* enter, const char* esc) {
   const char* functions[] = {enter, esc, ((void*)0)};
   return FunctionBar_new(functions, FunctionBar_EnterEscKeys, FunctionBar_EnterEscEvents);
}
