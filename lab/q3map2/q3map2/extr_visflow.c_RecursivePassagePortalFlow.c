
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {float dist; int normal; } ;
struct TYPE_21__ {size_t leaf; scalar_t__ status; float radius; TYPE_2__ plane; void* winding; int origin; scalar_t__ portalflood; scalar_t__ portalvis; scalar_t__ removed; TYPE_8__* passages; } ;
typedef TYPE_4__ vportal_t ;
struct TYPE_22__ {float dist; int normal; } ;
typedef TYPE_5__ visPlane_t ;
struct TYPE_18__ {TYPE_5__ portalplane; } ;
struct TYPE_23__ {TYPE_3__* base; TYPE_1__ pstack_head; } ;
typedef TYPE_6__ threaddata_t ;
struct TYPE_24__ {int* numseperators; int* mightsee; int* freewindings; struct TYPE_24__* next; void* pass; void* source; TYPE_5__** seperators; TYPE_4__* portal; TYPE_2__ portalplane; scalar_t__ depth; TYPE_9__* leaf; } ;
typedef TYPE_7__ pstack_t ;
struct TYPE_25__ {scalar_t__ cansee; struct TYPE_25__* next; } ;
typedef TYPE_8__ passage_t ;
struct TYPE_26__ {int numportals; TYPE_4__** portals; } ;
typedef TYPE_9__ leaf_t ;
struct TYPE_20__ {int* portalvis; float radius; int origin; } ;


 void* ClipToSeperators (void*,void*,void*,int ,TYPE_7__*) ;
 float DotProduct (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 void* VisChopWinding (void*,TYPE_7__*,TYPE_5__*) ;
 TYPE_9__* leafs ;
 int memcpy (long*,long*,int ) ;
 int portal_mutex ;
 int portalbytes ;
 int portallongs ;
 TYPE_4__* portals ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int qfalse ;
 int qtrue ;
 scalar_t__ stat_done ;
 int vec3_origin ;

void RecursivePassagePortalFlow( vportal_t *portal, threaddata_t *thread, pstack_t *prevstack ){
 pstack_t stack;
 vportal_t *p;
 leaf_t *leaf;
 visPlane_t backplane;
 passage_t *passage, *nextpassage;
 int i, j, n;
 long *might, *vis, *prevmight, *cansee, *portalvis, more;
 int pnum;



 leaf = &leafs[portal->leaf];


 prevstack->next = &stack;

 stack.next = ((void*)0);
 stack.leaf = leaf;
 stack.portal = ((void*)0);
 stack.depth = prevstack->depth + 1;






 vis = (long *)thread->base->portalvis;

 passage = portal->passages;
 nextpassage = passage;

 for ( i = 0; i < leaf->numportals; i++, passage = nextpassage )
 {
  p = leaf->portals[i];
  if ( p->removed ) {
   continue;
  }
  nextpassage = passage->next;
  pnum = p - portals;

  if ( !( prevstack->mightsee[pnum >> 3] & ( 1 << ( pnum & 7 ) ) ) ) {
   continue;

  }
  prevmight = (long *)prevstack->mightsee;
  cansee = (long *)passage->cansee;
  might = (long *)stack.mightsee;
  memcpy( might, prevmight, portalbytes );

  pthread_mutex_lock( &portal_mutex );
  if ( p->status == stat_done ) {
   portalvis = (long *) p->portalvis;
  }
  else{
   portalvis = (long *) p->portalflood;
  }
  pthread_mutex_unlock( &portal_mutex );

  more = 0;
  for ( j = 0; j < portallongs; j++ )
  {
   if ( *might ) {
    *might &= *cansee++ & *portalvis++;
    more |= ( *might & ~vis[j] );
   }
   else
   {
    cansee++;
    portalvis++;
   }
   might++;
  }

  if ( !more && ( thread->base->portalvis[pnum >> 3] & ( 1 << ( pnum & 7 ) ) ) ) {
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

   RecursivePassagePortalFlow( p, thread, &stack );
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


  RecursivePassagePortalFlow( p, thread, &stack );

  stack.next = ((void*)0);
 }
}
