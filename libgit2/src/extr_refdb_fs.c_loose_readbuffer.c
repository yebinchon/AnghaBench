
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char const*,char const*) ;
 int git_futils_readbuffer (TYPE_1__*,int ) ;

__attribute__((used)) static int loose_readbuffer(git_buf *buf, const char *base, const char *path)
{
 int error;


 if ((error = git_buf_joinpath(buf, base, path)) < 0 ||
  (error = git_futils_readbuffer(buf, buf->ptr)) < 0)
  git_buf_dispose(buf);

 return error;
}
