
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int git_buf_dispose (TYPE_1__*) ;
 scalar_t__ git_futils_readbuffer (TYPE_1__*,char const*) ;
 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static void files_are_equal(const char *a, const char *b)
{
 git_buf buf_a = GIT_BUF_INIT;
 git_buf buf_b = GIT_BUF_INIT;
 int pass;

 if (git_futils_readbuffer(&buf_a, a) < 0)
  cl_assert(0);

 if (git_futils_readbuffer(&buf_b, b) < 0) {
  git_buf_dispose(&buf_a);
  cl_assert(0);
 }

 pass = (buf_a.size == buf_b.size && !memcmp(buf_a.ptr, buf_b.ptr, buf_a.size));

 git_buf_dispose(&buf_a);
 git_buf_dispose(&buf_b);

 cl_assert(pass);
}
