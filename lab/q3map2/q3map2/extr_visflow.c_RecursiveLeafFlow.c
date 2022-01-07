
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {float dist; int normal; } ;
struct TYPE_19__ {scalar_t__ status; float radius; int leaf; TYPE_3__ plane; void* winding; int origin; scalar_t__ portalflood; scalar_t__ portalvis; scalar_t__ removed; } ;
typedef TYPE_4__ vportal_t ;
struct TYPE_20__ {float dist; int normal; } ;
typedef TYPE_5__ visPlane_t ;
struct TYPE_16__ {TYPE_5__ portalplane; } ;
struct TYPE_21__ {TYPE_2__* base; TYPE_1__ pstack_head; int c_chains; } ;
typedef TYPE_6__ threaddata_t ;
struct TYPE_22__ {int* numseperators; int* mightsee; int* freewindings; struct TYPE_22__* next; void* pass; void* source; TYPE_5__** seperators; TYPE_4__* portal; TYPE_3__ portalplane; scalar_t__ depth; TYPE_8__* leaf; } ;
typedef TYPE_7__ pstack_t ;
struct TYPE_23__ {int numportals; TYPE_4__** portals; } ;
typedef TYPE_8__ leaf_t ;
struct TYPE_17__ {int* portalvis; float radius; int origin; } ;


 void* ClipToSeperators (void*,void*,void*,int ,TYPE_7__*) ;
 float DotProduct (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 void* VisChopWinding (void*,TYPE_7__*,TYPE_5__*) ;
 TYPE_8__* leafs ;
 int portallongs ;
 TYPE_4__* portals ;
 int qfalse ;
 int qtrue ;
 scalar_t__ stat_done ;
 int vec3_origin ;

void RecursiveLeafFlow( int leafnum, threaddata_t *thread, pstack_t *prevstack ){
 pstack_t stack;
 vportal_t *p;
 visPlane_t backplane;
 leaf_t *leaf;
 int i, j, n;
 long *test, *might, *prevmight, *vis, more;
 int pnum;

 thread->c_chains++;

 leaf = &leafs[leafnum];


 prevstack->next = &stack;

 stack.next = ((void*)0);
 stack.leaf = leaf;
 stack.portal = ((void*)0);
 stack.depth = prevstack->depth + 1;






 might = (long *)stack.mightsee;
 vis = (long *)thread->base->portalvis;


 for ( i = 0; i < leaf->numportals; i++ )
 {
  p = leaf->portals[i];
  if ( p->removed ) {
   continue;
  }
  pnum = p - portals;
  if ( !( prevstack->mightsee[pnum >> 3] & ( 1 << ( pnum & 7 ) ) ) ) {
   continue;
  }


  if ( p->status == stat_done ) {
   test = (long *)p->portalvis;
  }
  else
  {
   test = (long *)p->portalflood;
  }

  more = 0;
  prevmight = (long *)prevstack->mightsee;
  for ( j = 0 ; j < portallongs ; j++ )
  {
   might[j] = prevmight[j] & test[j];
   more |= ( might[j] & ~vis[j] );
  }

  if ( !more &&
    ( thread->base->portalvis[pnum >> 3] & ( 1 << ( pnum & 7 ) ) ) ) {
   continue;
  }


  stack.portalplane = p->plane;
  VectorSubtract( vec3_origin, p->plane.normal, backplane.normal );
  backplane.dist = -p->plane.dist;



  stack.portal = p;
  stack.next = ((void*)0);
  stack.freewindings[0] = 1;
  stack.freewindings[1] = 1;
  stack.freewindings[2] = 1;


  {
   float d;

   d = DotProduct( p->origin, thread->pstack_head.portalplane.normal );
   d -= thread->pstack_head.portalplane.dist;
   if ( d < -p->radius ) {
    continue;
   }
   else if ( d > p->radius ) {
    stack.pass = p->winding;
   }
   else
   {
    stack.pass = VisChopWinding( p->winding, &stack, &thread->pstack_head.portalplane );
    if ( !stack.pass ) {
     continue;
    }
   }
  }
  {
   float d;

   d = DotProduct( thread->base->origin, p->plane.normal );
   d -= p->plane.dist;


   if ( d > thread->base->radius ) {
    continue;
   }


   else if ( d < -thread->base->radius ) {
    stack.source = prevstack->source;
   }
   else
   {
    stack.source = VisChopWinding( prevstack->source, &stack, &backplane );

    if ( !stack.source ) {
     continue;
    }
   }
  }







  if ( !prevstack->pass ) {


   thread->base->portalvis[pnum >> 3] |= ( 1 << ( pnum & 7 ) );

   RecursiveLeafFlow( p->leaf, thread, &stack );
   continue;
  }
  stack.pass = ClipToSeperators( stack.source, prevstack->pass, stack.pass, qfalse, &stack );

  if ( !stack.pass ) {
   continue;
  }
  stack.pass = ClipToSeperators( prevstack->pass, stack.source, stack.pass, qtrue, &stack );

  if ( !stack.pass ) {
   continue;
  }


  thread->base->portalvis[pnum >> 3] |= ( 1 << ( pnum & 7 ) );


  RecursiveLeafFlow( p->leaf, thread, &stack );

  stack.next = ((void*)0);
 }
}
