
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amd_northbridge {int dummy; } ;
struct TYPE_2__ {int num; struct amd_northbridge* nb; } ;


 TYPE_1__ amd_northbridges ;

struct amd_northbridge *node_to_amd_nb(int node)
{
 return (node < amd_northbridges.num) ? &amd_northbridges.nb[node] : ((void*)0);
}
