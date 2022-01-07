
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ a15_clusid; } ;


 TYPE_1__* info ;

__attribute__((used)) static inline bool cluster_is_a15(u32 cluster)
{
 return cluster == info->a15_clusid;
}
