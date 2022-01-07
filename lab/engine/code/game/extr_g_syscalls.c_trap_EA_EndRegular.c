
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_EA_END_REGULAR ;
 int PASSFLOAT (float) ;
 int syscall (int ,int,int ) ;

void trap_EA_EndRegular(int client, float thinktime) {
 syscall( BOTLIB_EA_END_REGULAR, client, PASSFLOAT(thinktime) );
}
