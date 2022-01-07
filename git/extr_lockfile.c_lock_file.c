
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct lock_file {TYPE_1__* tempfile; } ;
struct TYPE_2__ {int fd; } ;


 int LOCK_NO_DEREF ;
 char const* LOCK_SUFFIX ;
 struct strbuf STRBUF_INIT ;
 TYPE_1__* create_tempfile (int ) ;
 int resolve_symlink (struct strbuf*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int lock_file(struct lock_file *lk, const char *path, int flags)
{
 struct strbuf filename = STRBUF_INIT;

 strbuf_addstr(&filename, path);
 if (!(flags & LOCK_NO_DEREF))
  resolve_symlink(&filename);

 strbuf_addstr(&filename, LOCK_SUFFIX);
 lk->tempfile = create_tempfile(filename.buf);
 strbuf_release(&filename);
 return lk->tempfile ? lk->tempfile->fd : -1;
}
