
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int buf; } ;
struct TYPE_4__ {TYPE_2__ path; } ;
struct dir_iterator_level {int levels_nr; TYPE_1__ base; struct dir_iterator_level* levels; int prefix_len; scalar_t__ dir; } ;
struct dir_iterator_int {int levels_nr; TYPE_1__ base; struct dir_iterator_int* levels; int prefix_len; scalar_t__ dir; } ;
struct dir_iterator {int dummy; } ;


 int ITER_DONE ;
 scalar_t__ closedir (scalar_t__) ;
 int errno ;
 int free (struct dir_iterator_level*) ;
 int strbuf_release (TYPE_2__*) ;
 int strbuf_setlen (TYPE_2__*,int ) ;
 int warning_errno (char*,int ) ;

int dir_iterator_abort(struct dir_iterator *dir_iterator)
{
 struct dir_iterator_int *iter = (struct dir_iterator_int *)dir_iterator;

 for (; iter->levels_nr; iter->levels_nr--) {
  struct dir_iterator_level *level =
   &iter->levels[iter->levels_nr - 1];

  if (level->dir && closedir(level->dir)) {
   int saved_errno = errno;
   strbuf_setlen(&iter->base.path, level->prefix_len);
   errno = saved_errno;
   warning_errno("error closing directory '%s'",
          iter->base.path.buf);
  }
 }

 free(iter->levels);
 strbuf_release(&iter->base.path);
 free(iter);
 return ITER_DONE;
}
