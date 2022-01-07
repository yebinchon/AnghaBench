
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int assert (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char const*,char const*) ;
 int git_futils_writebuffer (TYPE_1__ const*,int ,int,int) ;

__attribute__((used)) static int write_wtfile(const char *base, const char *file, const git_buf *buf)
{
 git_buf path = GIT_BUF_INIT;
 int err;

 assert(base && file && buf);

 if ((err = git_buf_joinpath(&path, base, file)) < 0)
  goto out;

 if ((err = git_futils_writebuffer(buf, path.ptr, O_CREAT|O_EXCL|O_WRONLY, 0644)) < 0)
  goto out;

out:
 git_buf_dispose(&path);

 return err;
}
