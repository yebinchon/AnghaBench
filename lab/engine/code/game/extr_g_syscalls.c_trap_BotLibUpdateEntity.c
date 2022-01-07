
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_UPDATENTITY ;
 int syscall (int ,int,void*) ;

int trap_BotLibUpdateEntity(int ent, void *bue) {
 return syscall( BOTLIB_UPDATENTITY, ent, bue );
}
