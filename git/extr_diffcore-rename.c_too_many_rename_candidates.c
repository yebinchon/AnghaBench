
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int find_copies_harder; } ;
struct diff_options {int rename_limit; int needed_rename_limit; TYPE_1__ flags; } ;
struct TYPE_4__ {int p; } ;


 scalar_t__ diff_unmodified_pair (int ) ;
 TYPE_2__* rename_src ;
 int rename_src_nr ;

__attribute__((used)) static int too_many_rename_candidates(int num_create,
          struct diff_options *options)
{
 int rename_limit = options->rename_limit;
 int num_src = rename_src_nr;
 int i;

 options->needed_rename_limit = 0;







 if (rename_limit <= 0)
  rename_limit = 32767;
 if ((num_create <= rename_limit || num_src <= rename_limit) &&
     ((uint64_t)num_create * (uint64_t)num_src
      <= (uint64_t)rename_limit * (uint64_t)rename_limit))
  return 0;

 options->needed_rename_limit =
  num_src > num_create ? num_src : num_create;


 if (!options->flags.find_copies_harder)
  return 1;


 for (num_src = i = 0; i < rename_src_nr; i++) {
  if (diff_unmodified_pair(rename_src[i].p))
   continue;
  num_src++;
 }
 if ((num_create <= rename_limit || num_src <= rename_limit) &&
     ((uint64_t)num_create * (uint64_t)num_src
      <= (uint64_t)rename_limit * (uint64_t)rename_limit))
  return 2;
 return 1;
}
