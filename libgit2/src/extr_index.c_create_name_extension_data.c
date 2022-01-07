
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ancestor; char* ours; char* theirs; } ;
typedef TYPE_1__ git_index_name_entry ;
typedef int git_buf ;


 int git_buf_put (int *,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int create_name_extension_data(git_buf *name_buf, git_index_name_entry *conflict_name)
{
 int error = 0;

 if (conflict_name->ancestor == ((void*)0))
  error = git_buf_put(name_buf, "\0", 1);
 else
  error = git_buf_put(name_buf, conflict_name->ancestor, strlen(conflict_name->ancestor) + 1);

 if (error != 0)
  goto on_error;

 if (conflict_name->ours == ((void*)0))
  error = git_buf_put(name_buf, "\0", 1);
 else
  error = git_buf_put(name_buf, conflict_name->ours, strlen(conflict_name->ours) + 1);

 if (error != 0)
  goto on_error;

 if (conflict_name->theirs == ((void*)0))
  error = git_buf_put(name_buf, "\0", 1);
 else
  error = git_buf_put(name_buf, conflict_name->theirs, strlen(conflict_name->theirs) + 1);

on_error:
 return error;
}
