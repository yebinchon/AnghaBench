
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dialogType_t ;
typedef int dialogResult_t ;


 int DR_NO ;
 int DR_OK ;
 scalar_t__ DT_YES_NO ;
 int Sys_Print (char const*) ;

dialogResult_t Sys_Dialog( dialogType_t type, const char *message, const char *title ) {
 Sys_Print( message );
 return type == DT_YES_NO ? DR_NO : DR_OK;
}
