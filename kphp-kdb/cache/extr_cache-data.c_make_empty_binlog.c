
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_start {int dummy; } ;


 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int PATH_MAX ;
 int assert (int) ;
 int cache_id ;
 struct lev_start* cache_lev_start_alloc (int ,int*) ;
 scalar_t__ close (int) ;
 scalar_t__ fsync (int) ;
 int kprintf (char*,char*) ;
 int open (char*,int,int) ;
 int snprintf (char*,int,char*,char const*) ;
 int write (int,struct lev_start*,int) ;

void make_empty_binlog (const char *binlog_name) {
  char a[PATH_MAX];
  assert (snprintf (a, PATH_MAX, "%s.bin", binlog_name) < PATH_MAX);
  int sz;
  struct lev_start *E = cache_lev_start_alloc (cache_id, &sz);
  int fd = open (a, O_CREAT | O_WRONLY | O_EXCL, 0660);
  if (fd < 0) {
    kprintf ("open (%s, O_CREAT | O_WRONLY | O_EXCL, 0660) failed. %m\n", a);
    assert (fd >= 0);
  }
  assert (write (fd, E, sz) == sz);
  assert (fsync (fd) >= 0);
  assert (close (fd) >= 0);
}
