
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_R_SETCOLOR ;
 int syscall (int ,float const*) ;

void trap_R_SetColor( const float *rgba ) {
 syscall( UI_R_SETCOLOR, rgba );
}
