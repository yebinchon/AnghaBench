
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyclic_views_entry {int dummy; } ;


 long CYCLIC_VIEWS_BUFFER_SIZE ;

__attribute__((used)) static inline int subtract_CV (struct cyclic_views_entry *CV_start, struct cyclic_views_entry *CV_end) {
  long t = CV_end - CV_start;
  return t >= 0 ? t : t + CYCLIC_VIEWS_BUFFER_SIZE;
}
