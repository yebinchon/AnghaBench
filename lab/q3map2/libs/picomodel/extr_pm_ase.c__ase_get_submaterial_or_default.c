
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aseSubMaterial_t ;
typedef int aseMaterial_t ;


 int PICO_ERROR ;
 int * _ase_get_submaterial (int *,int,int) ;
 int _pico_printf (int ,char*,int,int) ;

aseSubMaterial_t* _ase_get_submaterial_or_default( aseMaterial_t* materials, int mtlIdParent, int subMtlId ){
 aseSubMaterial_t* subMtl = _ase_get_submaterial( materials, mtlIdParent, subMtlId );
 if ( subMtl != ((void*)0) ) {
  return subMtl;
 }


 subMtl = _ase_get_submaterial( materials, mtlIdParent, 0 );
 if ( subMtl != ((void*)0) ) {
  return subMtl;
 }

 _pico_printf( PICO_ERROR, "Could not find material/submaterial for id %d/%d\n", mtlIdParent, subMtlId );
 return ((void*)0);
}
