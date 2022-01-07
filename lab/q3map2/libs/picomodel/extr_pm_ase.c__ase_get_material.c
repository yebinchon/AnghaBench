
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mtlId; struct TYPE_4__* next; } ;
typedef TYPE_1__ aseMaterial_t ;



__attribute__((used)) static aseMaterial_t* _ase_get_material( aseMaterial_t* list, int mtlIdParent ){
 aseMaterial_t* mtl = list;

 while ( mtl )
 {
  if ( mtlIdParent == mtl->mtlId ) {
   break;
  }
  mtl = mtl->next;
 }
 return mtl;
}
