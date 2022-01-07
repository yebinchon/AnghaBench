
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dirent {int d_name; } ;
struct dir_iterator_level {int dir; int prefix_len; } ;
struct TYPE_6__ {int buf; } ;
struct TYPE_4__ {int st_mode; } ;
struct TYPE_5__ {TYPE_3__ path; TYPE_1__ st; } ;
struct dir_iterator_int {int flags; int levels_nr; TYPE_2__ base; struct dir_iterator_level* levels; } ;
struct dir_iterator {int dummy; } ;


 int DIR_ITERATOR_PEDANTIC ;
 scalar_t__ ENOENT ;
 int ITER_ERROR ;
 int ITER_OK ;
 scalar_t__ S_ISDIR (int ) ;
 int dir_iterator_abort (struct dir_iterator*) ;
 scalar_t__ errno ;
 scalar_t__ is_dot_or_dotdot (int ) ;
 scalar_t__ pop_level (struct dir_iterator_int*) ;
 scalar_t__ prepare_next_entry_data (struct dir_iterator_int*,struct dirent*) ;
 scalar_t__ push_level (struct dir_iterator_int*) ;
 struct dirent* readdir (int ) ;
 int strbuf_setlen (TYPE_3__*,int ) ;
 int warning_errno (char*,int ) ;

int dir_iterator_advance(struct dir_iterator *dir_iterator)
{
 struct dir_iterator_int *iter =
  (struct dir_iterator_int *)dir_iterator;

 if (S_ISDIR(iter->base.st.st_mode) && push_level(iter)) {
  if (errno != ENOENT && iter->flags & DIR_ITERATOR_PEDANTIC)
   goto error_out;
  if (iter->levels_nr == 0)
   goto error_out;
 }


 while (1) {
  struct dirent *de;
  struct dir_iterator_level *level =
   &iter->levels[iter->levels_nr - 1];

  strbuf_setlen(&iter->base.path, level->prefix_len);
  errno = 0;
  de = readdir(level->dir);

  if (!de) {
   if (errno) {
    warning_errno("error reading directory '%s'",
           iter->base.path.buf);
    if (iter->flags & DIR_ITERATOR_PEDANTIC)
     goto error_out;
   } else if (pop_level(iter) == 0) {
    return dir_iterator_abort(dir_iterator);
   }
   continue;
  }

  if (is_dot_or_dotdot(de->d_name))
   continue;

  if (prepare_next_entry_data(iter, de)) {
   if (errno != ENOENT && iter->flags & DIR_ITERATOR_PEDANTIC)
    goto error_out;
   continue;
  }

  return ITER_OK;
 }

error_out:
 dir_iterator_abort(dir_iterator);
 return ITER_ERROR;
}
