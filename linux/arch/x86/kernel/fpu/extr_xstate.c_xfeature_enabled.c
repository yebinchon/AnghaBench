
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum xfeature { ____Placeholder_xfeature } xfeature ;


 unsigned long xfeatures_mask ;

__attribute__((used)) static int xfeature_enabled(enum xfeature xfeature)
{
 return !!(xfeatures_mask & (1UL << xfeature));
}
