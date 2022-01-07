
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AAS_INT_FOR_BSP_EPAIR_KEY ;
 int syscall (int ,int,char*,int*) ;

int trap_AAS_IntForBSPEpairKey(int ent, char *key, int *value) {
 return syscall( BOTLIB_AAS_INT_FOR_BSP_EPAIR_KEY, ent, key, value );
}
