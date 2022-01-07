
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ asize; int * ptr; } ;
typedef TYPE_1__ git_buf ;


 int git__free (int *) ;
 int * git_buf__oom ;
 int git_buf_init (TYPE_1__*,int ) ;

void git_buf_dispose(git_buf *buf)
{
 if (!buf) return;

 if (buf->asize > 0 && buf->ptr != ((void*)0) && buf->ptr != git_buf__oom)
  git__free(buf->ptr);

 git_buf_init(buf, 0);
}
