
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_assert_equal_sz (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_sets (TYPE_1__*,char*) ;
 int git_buf_text_unescape (TYPE_1__*) ;
 int strlen (char*) ;

__attribute__((used)) static void assert_unescape(char *expected, char *to_unescape) {
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_buf_sets(&buf, to_unescape));
 git_buf_text_unescape(&buf);
 cl_assert_equal_s(expected, buf.ptr);
 cl_assert_equal_sz(strlen(expected), buf.size);

 git_buf_dispose(&buf);
}
