
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CLONE_LOCAL ;
 int GIT_CLONE_LOCAL_AUTO ;
 int GIT_CLONE_LOCAL_NO_LINKS ;
 int GIT_CLONE_NO_LOCAL ;
 int cl_assert_equal_i (int,int ) ;
 char* cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int file_url (TYPE_1__*,char*,char const*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_puts (TYPE_1__*,char*) ;
 int git_buf_shorten (TYPE_1__*,int) ;
 int git_clone__should_clone_local (char const*,int ) ;

void test_clone_local__should_clone_local(void)
{
 git_buf buf = GIT_BUF_INIT;


 const char *path = cl_fixture("testrepo.git");

 cl_git_pass(file_url(&buf, "", path));
 cl_assert_equal_i(0, git_clone__should_clone_local(buf.ptr, GIT_CLONE_LOCAL_AUTO));
 cl_assert_equal_i(1, git_clone__should_clone_local(buf.ptr, GIT_CLONE_LOCAL));
 cl_assert_equal_i(1, git_clone__should_clone_local(buf.ptr, GIT_CLONE_LOCAL_NO_LINKS));
 cl_assert_equal_i(0, git_clone__should_clone_local(buf.ptr, GIT_CLONE_NO_LOCAL));

 cl_git_pass(file_url(&buf, "localhost", path));
 cl_assert_equal_i(0, git_clone__should_clone_local(buf.ptr, GIT_CLONE_LOCAL_AUTO));
 cl_assert_equal_i(1, git_clone__should_clone_local(buf.ptr, GIT_CLONE_LOCAL));
 cl_assert_equal_i(1, git_clone__should_clone_local(buf.ptr, GIT_CLONE_LOCAL_NO_LINKS));
 cl_assert_equal_i(0, git_clone__should_clone_local(buf.ptr, GIT_CLONE_NO_LOCAL));

 cl_git_pass(file_url(&buf, "other-host.mycompany.com", path));
 cl_assert_equal_i(0, git_clone__should_clone_local(buf.ptr, GIT_CLONE_LOCAL_AUTO));
 cl_assert_equal_i(0, git_clone__should_clone_local(buf.ptr, GIT_CLONE_LOCAL));
 cl_assert_equal_i(0, git_clone__should_clone_local(buf.ptr, GIT_CLONE_LOCAL_NO_LINKS));
 cl_assert_equal_i(0, git_clone__should_clone_local(buf.ptr, GIT_CLONE_NO_LOCAL));


 cl_git_pass(file_url(&buf, "", path));
 git_buf_shorten(&buf, 4);
 cl_git_pass(git_buf_puts(&buf, "%2e%67%69%74"));
 cl_assert_equal_i(0, git_clone__should_clone_local(buf.ptr, GIT_CLONE_LOCAL_AUTO));
 cl_assert_equal_i(1, git_clone__should_clone_local(buf.ptr, GIT_CLONE_LOCAL));
 cl_assert_equal_i(1, git_clone__should_clone_local(buf.ptr, GIT_CLONE_LOCAL_NO_LINKS));
 cl_assert_equal_i(0, git_clone__should_clone_local(buf.ptr, GIT_CLONE_NO_LOCAL));

 cl_assert_equal_i(1, git_clone__should_clone_local(path, GIT_CLONE_LOCAL_AUTO));
 cl_assert_equal_i(1, git_clone__should_clone_local(path, GIT_CLONE_LOCAL));
 cl_assert_equal_i(1, git_clone__should_clone_local(path, GIT_CLONE_LOCAL_NO_LINKS));
 cl_assert_equal_i(0, git_clone__should_clone_local(path, GIT_CLONE_NO_LOCAL));

 git_buf_dispose(&buf);
}
