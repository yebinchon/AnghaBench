
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int flags; } ;


 TYPE_1__ amd_northbridges ;

bool amd_nb_has_feature(unsigned int feature)
{
 return ((amd_northbridges.flags & feature) == feature);
}
