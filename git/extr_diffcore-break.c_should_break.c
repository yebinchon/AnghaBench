
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct diff_filespec {unsigned long size; int cnt_data; int oid; scalar_t__ oid_valid; int mode; } ;


 unsigned long MAX_SCORE ;
 unsigned long MINIMUM_BREAK_SIZE ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ diff_populate_filespec (struct repository*,struct diff_filespec*,int ) ;
 scalar_t__ diffcore_count_changes (struct repository*,struct diff_filespec*,struct diff_filespec*,int *,int *,unsigned long*,unsigned long*) ;
 scalar_t__ oideq (int *,int *) ;

__attribute__((used)) static int should_break(struct repository *r,
   struct diff_filespec *src,
   struct diff_filespec *dst,
   int break_score,
   int *merge_score_p)
{
 unsigned long delta_size, max_size;
 unsigned long src_copied, literal_added, src_removed;

 *merge_score_p = 0;



 if (S_ISREG(src->mode) != S_ISREG(dst->mode)) {
  *merge_score_p = (int)MAX_SCORE;
  return 1;
 }

 if (src->oid_valid && dst->oid_valid &&
     oideq(&src->oid, &dst->oid))
  return 0;

 if (diff_populate_filespec(r, src, 0) ||
     diff_populate_filespec(r, dst, 0))
  return 0;

 max_size = ((src->size > dst->size) ? src->size : dst->size);
 if (max_size < MINIMUM_BREAK_SIZE)
  return 0;

 if (!src->size)
  return 0;

 if (diffcore_count_changes(r, src, dst,
       &src->cnt_data, &dst->cnt_data,
       &src_copied, &literal_added))
  return 0;


 if (src->size < src_copied)
  src_copied = src->size;
 if (dst->size < literal_added + src_copied) {
  if (src_copied < dst->size)
   literal_added = dst->size - src_copied;
  else
   literal_added = 0;
 }
 src_removed = src->size - src_copied;






 *merge_score_p = (int)(src_removed * MAX_SCORE / src->size);
 if (*merge_score_p > break_score)
  return 1;




 delta_size = src_removed + literal_added;
 if (delta_size * MAX_SCORE / max_size < break_score)
  return 0;




 if ((src->size * break_score < src_removed * MAX_SCORE) &&
     (literal_added * 20 < src_removed) &&
     (literal_added * 20 < src_copied))
  return 0;

 return 1;
}
