
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct repository {int dummy; } ;
struct diff_filepair {int done_skip_stat_unmatch; int skip_stat_unmatch_result; TYPE_1__* two; TYPE_1__* one; } ;
struct TYPE_5__ {scalar_t__ mode; scalar_t__ size; scalar_t__ oid_valid; } ;


 int CHECK_SIZE_ONLY ;
 int DIFF_FILE_VALID (TYPE_1__*) ;
 int diff_filespec_is_identical (struct repository*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ diff_populate_filespec (struct repository*,TYPE_1__*,int ) ;

__attribute__((used)) static int diff_filespec_check_stat_unmatch(struct repository *r,
         struct diff_filepair *p)
{
 if (p->done_skip_stat_unmatch)
  return p->skip_stat_unmatch_result;

 p->done_skip_stat_unmatch = 1;
 p->skip_stat_unmatch_result = 0;
 if (!DIFF_FILE_VALID(p->one) ||
     !DIFF_FILE_VALID(p->two) ||
     (p->one->oid_valid && p->two->oid_valid) ||
     (p->one->mode != p->two->mode) ||
     diff_populate_filespec(r, p->one, CHECK_SIZE_ONLY) ||
     diff_populate_filespec(r, p->two, CHECK_SIZE_ONLY) ||
     (p->one->size != p->two->size) ||
     !diff_filespec_is_identical(r, p->one, p->two))
  p->skip_stat_unmatch_result = 1;
 return p->skip_stat_unmatch_result;
}
