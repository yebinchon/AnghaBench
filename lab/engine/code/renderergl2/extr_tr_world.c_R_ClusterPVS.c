
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int byte ;
struct TYPE_4__ {TYPE_1__* world; } ;
struct TYPE_3__ {int numClusters; int clusterBytes; int const* vis; } ;


 TYPE_2__ tr ;

__attribute__((used)) static const byte *R_ClusterPVS (int cluster) {
 if (!tr.world->vis || cluster < 0 || cluster >= tr.world->numClusters ) {
  return ((void*)0);
 }

 return tr.world->vis + cluster * tr.world->clusterBytes;
}
