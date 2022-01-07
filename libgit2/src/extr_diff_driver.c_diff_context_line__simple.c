
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_diff_driver ;
struct TYPE_3__ {char* ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_UNUSED (int *) ;
 scalar_t__ git__isalpha (char) ;

__attribute__((used)) static int diff_context_line__simple(
 git_diff_driver *driver, git_buf *line)
{
 char firstch = line->ptr[0];
 GIT_UNUSED(driver);
 return (git__isalpha(firstch) || firstch == '_' || firstch == '$');
}
