
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int subMtlId; struct TYPE_7__* next; } ;
typedef TYPE_1__ aseSubMaterial_t ;
struct TYPE_8__ {TYPE_1__* subMtls; } ;
typedef TYPE_2__ aseMaterial_t ;


 int PICO_ERROR ;
 TYPE_2__* _ase_get_material (TYPE_2__*,int) ;
 int _pico_printf (int ,char*,int) ;

__attribute__((used)) static aseSubMaterial_t* _ase_get_submaterial( aseMaterial_t* list, int mtlIdParent, int subMtlId ){
 aseMaterial_t* parent = _ase_get_material( list, mtlIdParent );
 aseSubMaterial_t* subMtl = ((void*)0);

 if ( !parent ) {
  _pico_printf( PICO_ERROR, "No ASE material exists with id %i\n", mtlIdParent );
  return ((void*)0);
 }

 subMtl = parent->subMtls;
 while ( subMtl )
 {
  if ( subMtlId == subMtl->subMtlId ) {
   break;
  }
  subMtl = subMtl->next;
 }
 return subMtl;
}
