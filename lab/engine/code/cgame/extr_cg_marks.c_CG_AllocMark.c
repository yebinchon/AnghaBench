
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int time; struct TYPE_7__* nextMark; struct TYPE_7__* prevMark; } ;
typedef TYPE_1__ markPoly_t ;


 int CG_FreeMarkPoly (TYPE_1__*) ;
 TYPE_1__ cg_activeMarkPolys ;
 TYPE_1__* cg_freeMarkPolys ;
 int memset (TYPE_1__*,int ,int) ;

markPoly_t *CG_AllocMark( void ) {
 markPoly_t *le;
 int time;

 if ( !cg_freeMarkPolys ) {


  time = cg_activeMarkPolys.prevMark->time;
  while (cg_activeMarkPolys.prevMark && time == cg_activeMarkPolys.prevMark->time) {
   CG_FreeMarkPoly( cg_activeMarkPolys.prevMark );
  }
 }

 le = cg_freeMarkPolys;
 cg_freeMarkPolys = cg_freeMarkPolys->nextMark;

 memset( le, 0, sizeof( *le ) );


 le->nextMark = cg_activeMarkPolys.nextMark;
 le->prevMark = &cg_activeMarkPolys;
 cg_activeMarkPolys.nextMark->prevMark = le;
 cg_activeMarkPolys.nextMark = le;
 return le;
}
