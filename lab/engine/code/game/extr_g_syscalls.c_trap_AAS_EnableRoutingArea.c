
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AAS_ENABLE_ROUTING_AREA ;
 int syscall (int ,int,int) ;

int trap_AAS_EnableRoutingArea( int areanum, int enable ) {
 return syscall( BOTLIB_AAS_ENABLE_ROUTING_AREA, areanum, enable );
}
