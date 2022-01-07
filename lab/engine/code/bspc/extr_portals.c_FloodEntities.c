
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_4__ {scalar_t__ occupied; } ;
struct TYPE_5__ {TYPE_1__ outside_node; int * headnode; } ;
typedef TYPE_2__ tree_t ;
typedef int qboolean ;
typedef int node_t ;


 int GetVectorForKey (int *,char*,int*) ;
 int Log_Print (char*) ;
 scalar_t__ PlaceOccupant (int *,int*,int *) ;
 char* ValueForKey (int *,char*) ;
 scalar_t__ VectorCompare (int*,int ) ;
 int * entities ;
 int num_entities ;
 int strcmp (char*,char*) ;
 int vec3_origin ;

qboolean FloodEntities (tree_t *tree)
{
 int i;
 int x, y;
 vec3_t origin;
 char *cl;
 qboolean inside;
 node_t *headnode;

 headnode = tree->headnode;
 Log_Print("------ FloodEntities -------\n");
 inside = 0;
 tree->outside_node.occupied = 0;


 for (i = 1; i < num_entities; i++)
 {
  GetVectorForKey(&entities[i], "origin", origin);
  if (VectorCompare(origin, vec3_origin)) continue;

  cl = ValueForKey(&entities[i], "classname");
  origin[2] += 1;




  if (!strcmp(cl, "info_player_start"))
  {
   for (x = -16; x <= 16; x += 16)
   {
    for (y = -16; y <= 16; y += 16)
    {
     origin[0] += x;
     origin[1] += y;
     if (PlaceOccupant(headnode, origin, &entities[i]))
     {
      inside = 1;
      x = 999;
      break;
     }
     origin[0] -= x;
     origin[1] -= y;
    }
   }
  }
  else
  {
   if (PlaceOccupant(headnode, origin, &entities[i]))
   {
    inside = 1;
   }
  }
 }

 if (!inside)
 {
  Log_Print("WARNING: no entities inside\n");
 }
 else if (tree->outside_node.occupied)
 {
  Log_Print("WARNING: entity reached from outside\n");
 }

 return (qboolean)(inside && !tree->outside_node.occupied);
}
