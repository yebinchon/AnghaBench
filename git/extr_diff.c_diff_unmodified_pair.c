
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_filespec {scalar_t__ oid_valid; int dirty_submodule; int oid; int path; } ;
struct diff_filepair {struct diff_filespec* two; struct diff_filespec* one; } ;


 scalar_t__ DIFF_FILE_VALID (struct diff_filespec*) ;
 scalar_t__ DIFF_PAIR_MODE_CHANGED (struct diff_filepair*) ;
 scalar_t__ DIFF_PAIR_UNMERGED (struct diff_filepair*) ;
 scalar_t__ oideq (int *,int *) ;
 scalar_t__ strcmp (int ,int ) ;

int diff_unmodified_pair(struct diff_filepair *p)
{





 struct diff_filespec *one = p->one, *two = p->two;

 if (DIFF_PAIR_UNMERGED(p))
  return 0;




 if (DIFF_FILE_VALID(one) != DIFF_FILE_VALID(two) ||
     DIFF_PAIR_MODE_CHANGED(p) ||
     strcmp(one->path, two->path))
  return 0;




 if (one->oid_valid && two->oid_valid &&
     oideq(&one->oid, &two->oid) &&
     !one->dirty_submodule && !two->dirty_submodule)
  return 1;
 if (!one->oid_valid && !two->oid_valid)
  return 1;
 return 0;
}
