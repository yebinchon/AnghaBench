
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t asize; scalar_t__ ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (scalar_t__,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,scalar_t__,char*) ;
 int git_buf_sets (TYPE_1__*,char*) ;

void test_core_path__08_self_join(void)
{
 git_buf path = GIT_BUF_INIT;
 size_t asize = 0;

 asize = path.asize;
 cl_git_pass(git_buf_sets(&path, "/foo"));
 cl_assert_equal_s(path.ptr, "/foo");
 cl_assert(asize < path.asize);

 asize = path.asize;
 cl_git_pass(git_buf_joinpath(&path, path.ptr, "this is a new string"));
 cl_assert_equal_s(path.ptr, "/foo/this is a new string");
 cl_assert(asize < path.asize);

 asize = path.asize;
 cl_git_pass(git_buf_joinpath(&path, path.ptr, "/grow the buffer, grow the buffer, grow the buffer"));
 cl_assert_equal_s(path.ptr, "/foo/this is a new string/grow the buffer, grow the buffer, grow the buffer");
 cl_assert(asize < path.asize);

 git_buf_dispose(&path);
 cl_git_pass(git_buf_sets(&path, "/foo/bar"));

 cl_git_pass(git_buf_joinpath(&path, path.ptr + 4, "baz"));
 cl_assert_equal_s(path.ptr, "/bar/baz");

 asize = path.asize;
 cl_git_pass(git_buf_joinpath(&path, path.ptr + 4, "somethinglongenoughtorealloc"));
 cl_assert_equal_s(path.ptr, "/baz/somethinglongenoughtorealloc");
 cl_assert(asize < path.asize);

 git_buf_dispose(&path);
}
