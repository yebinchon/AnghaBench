
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int volume; } ;
typedef TYPE_1__ node_t ;
typedef int bspbrush_t ;


 int FreeBrush (int *) ;
 int SplitBrush (int ,int,int **,int **) ;

qboolean CheckPlaneAgainstVolume (int pnum, node_t *node)
{
 bspbrush_t *front, *back;
 qboolean good;

 SplitBrush (node->volume, pnum, &front, &back);

 good = (front && back);

 if (front) FreeBrush (front);
 if (back) FreeBrush (back);

 return good;
}
