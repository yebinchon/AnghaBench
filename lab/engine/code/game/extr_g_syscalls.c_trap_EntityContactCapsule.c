
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int qboolean ;
typedef int gentity_t ;


 int G_ENTITY_CONTACTCAPSULE ;
 int syscall (int ,int const,int const,int const*) ;

qboolean trap_EntityContactCapsule( const vec3_t mins, const vec3_t maxs, const gentity_t *ent ) {
 return syscall( G_ENTITY_CONTACTCAPSULE, mins, maxs, ent );
}
