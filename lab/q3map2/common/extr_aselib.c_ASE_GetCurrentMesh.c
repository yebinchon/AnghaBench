
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int aseMesh_t ;
struct TYPE_4__ {size_t currentFrame; int * frames; } ;
struct TYPE_5__ {TYPE_1__ anim; } ;
typedef TYPE_2__ aseGeomObject_t ;
struct TYPE_6__ {size_t currentObject; TYPE_2__* objects; } ;


 int Error (char*) ;
 size_t MAX_ASE_ANIMATION_FRAMES ;
 size_t MAX_ASE_OBJECTS ;
 TYPE_3__ ase ;

__attribute__((used)) static aseMesh_t *ASE_GetCurrentMesh( void ){
 aseGeomObject_t *pObject;

 if ( ase.currentObject >= MAX_ASE_OBJECTS ) {
  Error( "Too many GEOMOBJECTs" );
  return 0;
 }

 pObject = &ase.objects[ase.currentObject];

 if ( pObject->anim.currentFrame >= MAX_ASE_ANIMATION_FRAMES ) {
  Error( "Too many MESHes" );
  return 0;
 }

 return &pObject->anim.frames[pObject->anim.currentFrame];
}
