
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mtlId; struct TYPE_5__* next; int * subMtls; } ;
typedef TYPE_1__ aseMaterial_t ;


 TYPE_1__* _pico_calloc (int,int) ;

__attribute__((used)) static aseMaterial_t* _ase_add_material( aseMaterial_t **list, int mtlIdParent ){
 aseMaterial_t *mtl = _pico_calloc( 1, sizeof( aseMaterial_t ) );
 mtl->mtlId = mtlIdParent;
 mtl->subMtls = ((void*)0);
 mtl->next = *list;
 *list = mtl;

 return mtl;
}
