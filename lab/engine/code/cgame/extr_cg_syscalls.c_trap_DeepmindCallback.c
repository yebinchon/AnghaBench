
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_DEEPMIND_CALLBACK ;
 int syscall (int ,int,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t) ;

int trap_DeepmindCallback(int dm_callnum, intptr_t a1, intptr_t a2, intptr_t a3, intptr_t a4, intptr_t a5, intptr_t a6,
  intptr_t a7, intptr_t a8, intptr_t a9, intptr_t a10, intptr_t a11, intptr_t a12) {
 return syscall( CG_DEEPMIND_CALLBACK, dm_callnum, a1, a2, a3, a4, a5, a6,
  a7, a8, a9, a10, a11, a12 );
}
