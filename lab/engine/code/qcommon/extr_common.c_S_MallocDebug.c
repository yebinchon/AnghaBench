
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAG_SMALL ;
 void* Z_TagMallocDebug (int,int ,char*,char*,int) ;

void *S_MallocDebug( int size, char *label, char *file, int line ) {
 return Z_TagMallocDebug( size, TAG_SMALL, label, file, line );
}
