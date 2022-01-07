
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gentity_t ;


 int G_FreeEntity (int *) ;

void SP_info_null( gentity_t *self ) {
 G_FreeEntity( self );
}
