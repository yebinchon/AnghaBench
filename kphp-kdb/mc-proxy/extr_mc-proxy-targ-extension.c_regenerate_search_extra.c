
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_IGNORE_SORT_MASK ;
 int Q_RECEIVE_RAW ;
 int Q_SORT_MASK ;
 int assert (int ) ;
 scalar_t__ sprintf (char*,char*,int) ;

__attribute__((used)) static int regenerate_search_extra (char *buff, int flags, int slice_limit) {
  int l = 0;
  buff[l ++] = '#';
  if (flags & Q_RECEIVE_RAW) {
    buff[l ++] = '%';
  } else {
    assert (0);
  }
  char sort = flags & Q_SORT_MASK;
  if (sort && !(flags & Q_IGNORE_SORT_MASK)) {
    buff[l ++] = sort;
  }
  if (slice_limit) {
    l += sprintf (buff + l, "%d", slice_limit);
  }
  return l;
}
