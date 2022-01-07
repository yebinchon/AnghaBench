
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int picoVec3_t ;
typedef int picoVec2_t ;
typedef int picoModel_t ;
typedef scalar_t__ picoIndex_t ;
typedef int picoColor_t ;
struct TYPE_12__ {int id; int normal; int xyz; } ;
typedef TYPE_1__ aseVertex_t ;
struct TYPE_13__ {int texcoord; } ;
typedef TYPE_2__ aseTexCoord_t ;
struct TYPE_14__ {int shader; } ;
typedef TYPE_3__ aseSubMaterial_t ;
typedef int aseMaterial_t ;
typedef TYPE_4__* aseFacesIter_t ;
struct TYPE_15__ {size_t* indices; scalar_t__ smoothingGroup; int subMaterialId; int materialId; } ;
typedef TYPE_4__ aseFace_t ;
struct TYPE_16__ {int color; } ;
typedef TYPE_6__ aseColor_t ;


 int PicoAddTriangleToModel (int *,int **,int **,int,int **,int,int **,int ,scalar_t__*) ;
 TYPE_3__* _ase_get_submaterial_or_default (int *,int ,int ) ;
 int white ;

__attribute__((used)) static void _ase_submit_triangles( picoModel_t* model, aseMaterial_t* materials, aseVertex_t* vertices, aseTexCoord_t* texcoords, aseColor_t* colors, aseFace_t* faces, int numFaces ){
 aseFacesIter_t i = faces, end = faces + numFaces;
 for (; i != end; ++i )
 {

  aseSubMaterial_t* subMtl = _ase_get_submaterial_or_default( materials, ( *i ).materialId, ( *i ).subMaterialId );
  if ( subMtl == ((void*)0) ) {
   return;
  }

  {
   picoVec3_t* xyz[3];
   picoVec3_t* normal[3];
   picoVec2_t* st[3];
   picoColor_t* color[3];
   picoIndex_t smooth[3];
   int j;

   for ( j = 0 ; j < 3 ; j++ )
   {
    xyz[j] = &vertices[( *i ).indices[j]].xyz;
    normal[j] = &vertices[( *i ).indices[j]].normal;
    st[j] = &texcoords[( *i ).indices[j + 3]].texcoord;

    if ( colors != ((void*)0) && ( *i ).indices[j + 6] >= 0 ) {
     color[j] = &colors[( *i ).indices[j + 6]].color;
    }
    else
    {
     color[j] = &white;
    }

    smooth[j] = ( vertices[( *i ).indices[j]].id * ( 1 << 16 ) ) + ( *i ).smoothingGroup;

   }


   PicoAddTriangleToModel( model, xyz, normal, 1, st, 1, color, subMtl->shader, smooth );
  }
 }
}
