
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* ptr; } ;
typedef TYPE_1__ git_buf ;
typedef int buffer ;


 int cl_assert_equal_s (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_message_prettify (TYPE_1__*,char*,int,char) ;
 int memset (TYPE_1__*,int ,int) ;

void test_object_message__message_prettify(void)
{
 git_buf buffer;

 memset(&buffer, 0, sizeof(buffer));
 cl_git_pass(git_message_prettify(&buffer, "", 0, '#'));
 cl_assert_equal_s(buffer.ptr, "");
 git_buf_dispose(&buffer);
 cl_git_pass(git_message_prettify(&buffer, "", 1, '#'));
 cl_assert_equal_s(buffer.ptr, "");
 git_buf_dispose(&buffer);

 cl_git_pass(git_message_prettify(&buffer, "Short", 0, '#'));
 cl_assert_equal_s("Short\n", buffer.ptr);
 git_buf_dispose(&buffer);
 cl_git_pass(git_message_prettify(&buffer, "Short", 1, '#'));
 cl_assert_equal_s("Short\n", buffer.ptr);
 git_buf_dispose(&buffer);

 cl_git_pass(git_message_prettify(&buffer, "This is longer\nAnd multiline\n# with some comments still in\n", 0, '#'));
 cl_assert_equal_s(buffer.ptr, "This is longer\nAnd multiline\n# with some comments still in\n");
 git_buf_dispose(&buffer);

 cl_git_pass(git_message_prettify(&buffer, "This is longer\nAnd multiline\n# with some comments still in\n", 1, '#'));
 cl_assert_equal_s(buffer.ptr, "This is longer\nAnd multiline\n");
 git_buf_dispose(&buffer);
}
