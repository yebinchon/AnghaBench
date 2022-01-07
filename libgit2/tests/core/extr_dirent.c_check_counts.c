
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* names; } ;
typedef TYPE_1__ walk_data ;
struct TYPE_5__ {int count; scalar_t__ name; } ;
typedef TYPE_2__ name_data ;


 int cl_assert (int) ;

__attribute__((used)) static void check_counts(walk_data *d)
{
 name_data *n;

 for (n = d->names; n->name; n++) {
  cl_assert(n->count == 1);
 }
}
