
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 struct stat* get_stat (int *,int ) ;
 int mrb_str_new_static (int *,char const*,size_t) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static mrb_value
stat_ftype(mrb_state *mrb, mrb_value self)
{
  struct stat *st = get_stat(mrb, self);
  const char *t;

  if (S_ISREG(st->st_mode)) {
    t = "file";
  }
  else if (S_ISDIR(st->st_mode)) {
    t = "directory";
  }
  else if (S_ISCHR(st->st_mode)) {
    t = "characterSpecial";
  }
  else {
    t = "unknown";
  }
  return mrb_str_new_static(mrb, t, (size_t)strlen(t));
}
