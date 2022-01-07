
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* subMtls; } ;
typedef TYPE_1__ aseSubMaterial_t ;
typedef TYPE_1__ aseMaterial_t ;


 int _pico_free (TYPE_1__*) ;

__attribute__((used)) static void _ase_free_materials( aseMaterial_t **list ){
 aseMaterial_t* mtl = *list;
 aseSubMaterial_t* subMtl = ((void*)0);

 aseMaterial_t* mtlTemp = ((void*)0);
 aseSubMaterial_t* subMtlTemp = ((void*)0);

 while ( mtl )
 {
  subMtl = mtl->subMtls;
  while ( subMtl )
  {
   subMtlTemp = subMtl->next;
   _pico_free( subMtl );
   subMtl = subMtlTemp;
  }
  mtlTemp = mtl->next;
  _pico_free( mtl );
  mtl = mtlTemp;
 }
 ( *list ) = ((void*)0);
}
