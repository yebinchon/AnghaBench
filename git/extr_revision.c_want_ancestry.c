
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name; } ;
struct rev_info {TYPE_1__ children; scalar_t__ rewrite_parents; } ;



__attribute__((used)) static inline int want_ancestry(const struct rev_info *revs)
{
 return (revs->rewrite_parents || revs->children.name);
}
