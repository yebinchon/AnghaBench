
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int st_mode; } ;
struct TYPE_4__ {int buf; } ;
struct dir_iterator {TYPE_3__ st; TYPE_1__ path; } ;
struct dir_iterator_int {unsigned int flags; struct dir_iterator base; scalar_t__ levels_nr; int levels_alloc; int levels; } ;


 int ALLOC_GROW (int ,int,int ) ;
 int ENOTDIR ;
 int PATH_MAX ;
 int S_ISDIR (int ) ;
 int dir_iterator_abort (struct dir_iterator*) ;
 int errno ;
 scalar_t__ stat (int ,TYPE_3__*) ;
 int strbuf_addstr (TYPE_1__*,char const*) ;
 int strbuf_init (TYPE_1__*,int ) ;
 struct dir_iterator_int* xcalloc (int,int) ;

struct dir_iterator *dir_iterator_begin(const char *path, unsigned int flags)
{
 struct dir_iterator_int *iter = xcalloc(1, sizeof(*iter));
 struct dir_iterator *dir_iterator = &iter->base;
 int saved_errno;

 strbuf_init(&iter->base.path, PATH_MAX);
 strbuf_addstr(&iter->base.path, path);

 ALLOC_GROW(iter->levels, 10, iter->levels_alloc);
 iter->levels_nr = 0;
 iter->flags = flags;





 if (stat(iter->base.path.buf, &iter->base.st) < 0) {
  saved_errno = errno;
  goto error_out;
 }

 if (!S_ISDIR(iter->base.st.st_mode)) {
  saved_errno = ENOTDIR;
  goto error_out;
 }

 return dir_iterator;

error_out:
 dir_iterator_abort(dir_iterator);
 errno = saved_errno;
 return ((void*)0);
}
