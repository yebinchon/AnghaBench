
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AAS_VALUE_FOR_BSP_EPAIR_KEY ;
 int syscall (int ,int,char*,char*,int) ;

int trap_AAS_ValueForBSPEpairKey(int ent, char *key, char *value, int size) {
 return syscall( BOTLIB_AAS_VALUE_FOR_BSP_EPAIR_KEY, ent, key, value, size );
}
