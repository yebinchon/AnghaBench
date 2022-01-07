
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AAS_AREA_REACHABILITY ;
 int syscall (int ,int) ;

int trap_AAS_AreaReachability(int areanum) {
 return syscall( BOTLIB_AAS_AREA_REACHABILITY, areanum );
}
