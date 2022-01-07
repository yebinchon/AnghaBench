
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_7__ {int type; int dist; int normal; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_8__ {int* mins; float* maxs; } ;
typedef TYPE_2__ node_t ;
struct TYPE_9__ {size_t planenum; int compileFlags; scalar_t__ priority; int w; scalar_t__ checked; struct TYPE_9__* next; } ;
typedef TYPE_3__ face_t ;


 int FindFloatPlane (int*,float,int ,int *) ;
 int SIDE_BACK ;
 int SIDE_CROSS ;
 int SIDE_FRONT ;
 int VectorClear (int*) ;
 int WindingOnPlaneSide (int ,int ,int ) ;
 int* blockSize ;
 int floor (int) ;
 TYPE_1__* mapplanes ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

__attribute__((used)) static void SelectSplitPlaneNum( node_t *node, face_t *list, int *splitPlaneNum, int *compileFlags ){
 face_t *split;
 face_t *check;
 face_t *bestSplit;
 int splits, facing, front, back;
 int side;
 plane_t *plane;
 int value, bestValue;
 int i;
 vec3_t normal;
 float dist;
 int planenum;



 *splitPlaneNum = -1;
 *compileFlags = 0;





 for ( i = 0; i < 3; i++ )
 {
  if ( blockSize[ i ] <= 0 ) {
   continue;
  }
  dist = blockSize[ i ] * ( floor( node->mins[ i ] / blockSize[ i ] ) + 1 );
  if ( node->maxs[ i ] > dist ) {
   VectorClear( normal );
   normal[ i ] = 1;
   planenum = FindFloatPlane( normal, dist, 0, ((void*)0) );
   *splitPlaneNum = planenum;
   return;
  }
 }


 bestValue = -99999;
 bestSplit = list;

 for ( split = list; split; split = split->next )
  split->checked = qfalse;

 for ( split = list; split; split = split->next )
 {
  if ( split->checked ) {
   continue;
  }

  plane = &mapplanes[ split->planenum ];
  splits = 0;
  facing = 0;
  front = 0;
  back = 0;
  for ( check = list ; check ; check = check->next ) {
   if ( check->planenum == split->planenum ) {
    facing++;
    check->checked = qtrue;
    continue;
   }
   side = WindingOnPlaneSide( check->w, plane->normal, plane->dist );
   if ( side == SIDE_CROSS ) {
    splits++;
   }
   else if ( side == SIDE_FRONT ) {
    front++;
   }
   else if ( side == SIDE_BACK ) {
    back++;
   }
  }
  value = 5 * facing - 5 * splits;
  if ( plane->type < 3 ) {
   value += 5;
  }
  value += split->priority;

  if ( value > bestValue ) {
   bestValue = value;
   bestSplit = split;
  }
 }


 if ( bestValue == -99999 ) {
  return;
 }


 *splitPlaneNum = bestSplit->planenum;
 *compileFlags = bestSplit->compileFlags;
}
