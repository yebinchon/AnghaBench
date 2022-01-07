
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int renderfx; int hModel; } ;
struct TYPE_4__ {TYPE_1__ testModelEntity; int testGun; } ;


 int CG_TestModel_f () ;
 int RF_DEPTHHACK ;
 int RF_FIRST_PERSON ;
 int RF_MINLIGHT ;
 TYPE_2__ cg ;
 int qtrue ;

void CG_TestGun_f (void) {
 CG_TestModel_f();

 if ( !cg.testModelEntity.hModel ) {
  return;
 }

 cg.testGun = qtrue;
 cg.testModelEntity.renderfx = RF_MINLIGHT | RF_DEPTHHACK | RF_FIRST_PERSON;
}
