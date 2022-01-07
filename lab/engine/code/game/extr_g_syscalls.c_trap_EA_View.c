
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_EA_VIEW ;
 int syscall (int ,int,int ) ;

void trap_EA_View(int client, vec3_t viewangles) {
 syscall( BOTLIB_EA_VIEW, client, viewangles );
}
