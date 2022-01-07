
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct diff_filespec {unsigned long size; int cnt_data; int mode; } ;


 int CHECK_SIZE_ONLY ;
 int MAX_SCORE ;
 int S_ISREG (int ) ;
 scalar_t__ diff_populate_filespec (struct repository*,struct diff_filespec*,int ) ;
 scalar_t__ diffcore_count_changes (struct repository*,struct diff_filespec*,struct diff_filespec*,int *,int *,unsigned long*,unsigned long*) ;

__attribute__((used)) static int estimate_similarity(struct repository *r,
          struct diff_filespec *src,
          struct diff_filespec *dst,
          int minimum_score)
{
 unsigned long max_size, delta_size, base_size, src_copied, literal_added;
 int score;





 if (!S_ISREG(src->mode) || !S_ISREG(dst->mode))
  return 0;
 if (!src->cnt_data &&
     diff_populate_filespec(r, src, CHECK_SIZE_ONLY))
  return 0;
 if (!dst->cnt_data &&
     diff_populate_filespec(r, dst, CHECK_SIZE_ONLY))
  return 0;

 max_size = ((src->size > dst->size) ? src->size : dst->size);
 base_size = ((src->size < dst->size) ? src->size : dst->size);
 delta_size = max_size - base_size;
 if (max_size * (MAX_SCORE-minimum_score) < delta_size * MAX_SCORE)
  return 0;

 if (!src->cnt_data && diff_populate_filespec(r, src, 0))
  return 0;
 if (!dst->cnt_data && diff_populate_filespec(r, dst, 0))
  return 0;

 if (diffcore_count_changes(r, src, dst,
       &src->cnt_data, &dst->cnt_data,
       &src_copied, &literal_added))
  return 0;




 if (!dst->size)
  score = 0;
 else
  score = (int)(src_copied * MAX_SCORE / max_size);
 return score;
}
