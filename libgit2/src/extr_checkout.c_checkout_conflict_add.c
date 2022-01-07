
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int path; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_7__ {int index; } ;
typedef TYPE_2__ checkout_data ;


 int GIT_ENOTFOUND ;
 int git_error_clear () ;
 int git_index_add (int ,TYPE_1__ const*) ;
 int git_index_remove (int ,int ,int ) ;

__attribute__((used)) static int checkout_conflict_add(
 checkout_data *data,
 const git_index_entry *conflict)
{
 int error = git_index_remove(data->index, conflict->path, 0);

 if (error == GIT_ENOTFOUND)
  git_error_clear();
 else if (error < 0)
  return error;

 return git_index_add(data->index, conflict);
}
