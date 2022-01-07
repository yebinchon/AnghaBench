
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CL_AddReliableCommand (char*,int ) ;
 int qfalse ;

void CL_ResetPureClientAtServer( void ) {
 CL_AddReliableCommand("vdr", qfalse);
}
