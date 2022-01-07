
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* hash_chain; int dist; } ;
typedef TYPE_1__ plane_t ;


 int PLANE_HASHES ;
 scalar_t__ fabs (int ) ;
 TYPE_1__** planehash ;

void AddPlaneToHash( plane_t *p ){
 int hash;


 hash = ( PLANE_HASHES - 1 ) & (int) fabs( p->dist );

 p->hash_chain = planehash[hash];
 planehash[hash] = p;
}
