
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* hashnext; int dist; } ;
typedef TYPE_1__ th_plane_t ;
struct TYPE_5__ {TYPE_1__** planehash; } ;


 int PLANEHASH_SIZE ;
 scalar_t__ fabs (int ) ;
 TYPE_2__ thworld ;

void TH_AddPlaneToHash(th_plane_t *p)
{
 int hash;

 hash = (int)fabs(p->dist) / 8;
 hash &= (PLANEHASH_SIZE-1);

 p->hashnext = thworld.planehash[hash];
 thworld.planehash[hash] = p;
}
