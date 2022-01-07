
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVAR_TEMP ;
 int Cvar_Get (char*,char*,int ) ;
 int cl_shownet ;

void CL_Init( void ) {
 cl_shownet = Cvar_Get ("cl_shownet", "0", CVAR_TEMP );
}
