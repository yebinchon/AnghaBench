
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dirent {int d_name; } ;
struct TYPE_6__ {scalar_t__ buf; } ;
struct TYPE_5__ {TYPE_3__ path; int st; scalar_t__ basename; scalar_t__ relative_path; } ;
struct dir_iterator_int {int levels_nr; int flags; TYPE_2__ base; TYPE_1__* levels; } ;
struct TYPE_4__ {scalar_t__ prefix_len; } ;


 int DIR_ITERATOR_FOLLOW_SYMLINKS ;
 int ENOENT ;
 int errno ;
 int lstat (scalar_t__,int *) ;
 int stat (scalar_t__,int *) ;
 int strbuf_addstr (TYPE_3__*,int ) ;
 int warning_errno (char*,scalar_t__) ;

__attribute__((used)) static int prepare_next_entry_data(struct dir_iterator_int *iter,
       struct dirent *de)
{
 int err, saved_errno;

 strbuf_addstr(&iter->base.path, de->d_name);




 iter->base.relative_path = iter->base.path.buf +
       iter->levels[0].prefix_len;
 iter->base.basename = iter->base.path.buf +
         iter->levels[iter->levels_nr - 1].prefix_len;

 if (iter->flags & DIR_ITERATOR_FOLLOW_SYMLINKS)
  err = stat(iter->base.path.buf, &iter->base.st);
 else
  err = lstat(iter->base.path.buf, &iter->base.st);

 saved_errno = errno;
 if (err && errno != ENOENT)
  warning_errno("failed to stat '%s'", iter->base.path.buf);

 errno = saved_errno;
 return err;
}
