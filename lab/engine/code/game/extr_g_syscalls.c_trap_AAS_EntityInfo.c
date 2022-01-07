
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AAS_ENTITY_INFO ;
 int syscall (int ,int,void*) ;

void trap_AAS_EntityInfo(int entnum, void *info) {
 syscall( BOTLIB_AAS_ENTITY_INFO, entnum, info );
}
