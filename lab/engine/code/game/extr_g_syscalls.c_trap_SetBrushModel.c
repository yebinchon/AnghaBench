
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gentity_t ;


 int G_SET_BRUSH_MODEL ;
 int syscall (int ,int *,char const*) ;

void trap_SetBrushModel( gentity_t *ent, const char *name ) {
 syscall( G_SET_BRUSH_MODEL, ent, name );
}
