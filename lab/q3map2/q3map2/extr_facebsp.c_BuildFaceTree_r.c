
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_13__ {int* normal; int dist; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_14__ {int planenum; int compileFlags; struct TYPE_14__** children; int * maxs; int * mins; struct TYPE_14__* parent; } ;
typedef TYPE_2__ node_t ;
struct TYPE_15__ {int planenum; struct TYPE_15__* next; int compileFlags; int priority; int * w; } ;
typedef TYPE_3__ face_t ;


 TYPE_3__* AllocBspFace () ;
 TYPE_2__* AllocNode () ;
 int CLIP_EPSILON ;
 int ClipWindingEpsilon (int *,int*,int ,int,int **,int **) ;
 int CountFaceList (TYPE_3__*) ;
 int FreeBspFace (TYPE_3__*) ;
 int PLANENUM_LEAF ;
 int SIDE_BACK ;
 int SIDE_CROSS ;
 int SIDE_FRONT ;
 int SelectSplitPlaneNum (TYPE_2__*,TYPE_3__*,int*,int*) ;
 int VectorCopy (int *,int *) ;
 int WindingOnPlaneSide (int *,int*,int ) ;
 int c_faceLeafs ;
 TYPE_1__* mapplanes ;

void BuildFaceTree_r( node_t *node, face_t *list ){
 face_t *split;
 face_t *next;
 int side;
 plane_t *plane;
 face_t *newFace;
 face_t *childLists[2];
 winding_t *frontWinding, *backWinding;
 int i;
 int splitPlaneNum, compileFlags;



 i = CountFaceList( list );


 SelectSplitPlaneNum( node, list, &splitPlaneNum, &compileFlags );


 if ( splitPlaneNum == -1 ) {
  node->planenum = PLANENUM_LEAF;
  c_faceLeafs++;
  return;
 }


 node->planenum = splitPlaneNum;
 node->compileFlags = compileFlags;
 plane = &mapplanes[ splitPlaneNum ];
 childLists[0] = ((void*)0);
 childLists[1] = ((void*)0);
 for ( split = list; split; split = next )
 {

  next = split->next;


  if ( split->planenum == node->planenum ) {
   FreeBspFace( split );
   continue;
  }


  side = WindingOnPlaneSide( split->w, plane->normal, plane->dist );


  if ( side == SIDE_CROSS ) {
   ClipWindingEpsilon( split->w, plane->normal, plane->dist, CLIP_EPSILON * 2,
        &frontWinding, &backWinding );
   if ( frontWinding ) {
    newFace = AllocBspFace();
    newFace->w = frontWinding;
    newFace->next = childLists[0];
    newFace->planenum = split->planenum;
    newFace->priority = split->priority;
    newFace->compileFlags = split->compileFlags;
    childLists[0] = newFace;
   }
   if ( backWinding ) {
    newFace = AllocBspFace();
    newFace->w = backWinding;
    newFace->next = childLists[1];
    newFace->planenum = split->planenum;
    newFace->priority = split->priority;
    newFace->compileFlags = split->compileFlags;
    childLists[1] = newFace;
   }
   FreeBspFace( split );
  }
  else if ( side == SIDE_FRONT ) {
   split->next = childLists[0];
   childLists[0] = split;
  }
  else if ( side == SIDE_BACK ) {
   split->next = childLists[1];
   childLists[1] = split;
  }
 }



 for ( i = 0 ; i < 2 ; i++ ) {
  node->children[i] = AllocNode();
  node->children[i]->parent = node;
  VectorCopy( node->mins, node->children[i]->mins );
  VectorCopy( node->maxs, node->children[i]->maxs );
 }

 for ( i = 0 ; i < 3 ; i++ ) {
  if ( plane->normal[i] == 1 ) {
   node->children[0]->mins[i] = plane->dist;
   node->children[1]->maxs[i] = plane->dist;
   break;
  }
 }

 for ( i = 0 ; i < 2 ; i++ ) {
  BuildFaceTree_r( node->children[i], childLists[i] );
 }
}
