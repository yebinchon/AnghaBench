
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int picoShader_t ;
struct TYPE_10__ {int subMtlId; struct TYPE_10__* next; int * shader; } ;
typedef TYPE_1__ aseSubMaterial_t ;
struct TYPE_11__ {TYPE_1__* subMtls; } ;
typedef TYPE_2__ aseMaterial_t ;


 TYPE_2__* _ase_add_material (TYPE_2__**,int) ;
 TYPE_2__* _ase_get_material (TYPE_2__*,int) ;
 TYPE_1__* _pico_calloc (int,int) ;

__attribute__((used)) static aseSubMaterial_t* _ase_add_submaterial( aseMaterial_t **list, int mtlIdParent, int subMtlId, picoShader_t* shader ){
 aseMaterial_t *parent = _ase_get_material( *list, mtlIdParent );
 aseSubMaterial_t *subMtl = _pico_calloc( 1, sizeof( aseSubMaterial_t ) );

 if ( !parent ) {
  parent = _ase_add_material( list, mtlIdParent );
 }

 subMtl->shader = shader;
 subMtl->subMtlId = subMtlId;
 subMtl->next = parent->subMtls;
 parent->subMtls = subMtl;

 return subMtl;
}
