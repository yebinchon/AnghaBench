
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_UNUSED (void*) ;
 int git_path_is_dot_or_dotdot (int ) ;

__attribute__((used)) static int path_found_entry(void *payload, git_buf *path)
{
 GIT_UNUSED(payload);
 return !git_path_is_dot_or_dotdot(path->ptr);
}
