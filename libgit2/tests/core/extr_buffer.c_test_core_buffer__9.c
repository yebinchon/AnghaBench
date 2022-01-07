
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sep ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
typedef int b ;
typedef int a ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (char*,int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_join (TYPE_1__*,char,char*,char*) ;

void test_core_buffer__9(void)
{
 git_buf buf = GIT_BUF_INIT;


 char *a[] = { "", "-", "a-", "-a", "-a-" };
 char *b[] = { "", "-", "b-", "-b", "-b-" };
 char sep[] = { 0, '-', '/' };
 char *expect_null[] = { "", "-", "a-", "-a", "-a-",
       "-", "--", "a--", "-a-", "-a--",
       "b-", "-b-", "a-b-", "-ab-", "-a-b-",
       "-b", "--b", "a--b", "-a-b", "-a--b",
       "-b-", "--b-", "a--b-", "-a-b-", "-a--b-" };
 char *expect_dash[] = { "", "-", "a-", "-a-", "-a-",
       "-", "-", "a-", "-a-", "-a-",
       "b-", "-b-", "a-b-", "-a-b-", "-a-b-",
       "-b", "-b", "a-b", "-a-b", "-a-b",
       "-b-", "-b-", "a-b-", "-a-b-", "-a-b-" };
 char *expect_slas[] = { "", "-/", "a-/", "-a/", "-a-/",
       "-", "-/-", "a-/-", "-a/-", "-a-/-",
       "b-", "-/b-", "a-/b-", "-a/b-", "-a-/b-",
       "-b", "-/-b", "a-/-b", "-a/-b", "-a-/-b",
       "-b-", "-/-b-", "a-/-b-", "-a/-b-", "-a-/-b-" };
 char **expect_values[] = { expect_null, expect_dash, expect_slas };
 char separator, **expect;
 unsigned int s, i, j;

 for (s = 0; s < sizeof(sep) / sizeof(char); ++s) {
  separator = sep[s];
  expect = expect_values[s];

  for (j = 0; j < sizeof(b) / sizeof(char*); ++j) {
   for (i = 0; i < sizeof(a) / sizeof(char*); ++i) {
    git_buf_join(&buf, separator, a[i], b[j]);
    cl_assert_equal_s(*expect, buf.ptr);
    expect++;
   }
  }
 }

 git_buf_dispose(&buf);
}
