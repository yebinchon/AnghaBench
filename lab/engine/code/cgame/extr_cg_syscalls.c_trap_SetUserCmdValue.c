
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_SETUSERCMDVALUE ;
 int PASSFLOAT (float) ;
 int syscall (int ,int,int ) ;

void trap_SetUserCmdValue( int stateValue, float sensitivityScale ) {
 syscall( CG_SETUSERCMDVALUE, stateValue, PASSFLOAT(sensitivityScale) );
}
