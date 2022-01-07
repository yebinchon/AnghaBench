
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int G_AREAS_CONNECTED ;
 int syscall (int ,int,int) ;

qboolean trap_AreasConnected( int area1, int area2 ) {
 return syscall( G_AREAS_CONNECTED, area1, area2 );
}
