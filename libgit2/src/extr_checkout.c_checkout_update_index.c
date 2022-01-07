
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_9__ {char* path; int id; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_10__ {int id; scalar_t__ path; } ;
typedef TYPE_2__ git_diff_file ;
typedef int entry ;
struct TYPE_11__ {int index; } ;
typedef TYPE_3__ checkout_data ;


 int git_index_add (int ,TYPE_1__*) ;
 int git_index_entry__init_from_stat (TYPE_1__*,struct stat*,int) ;
 int git_oid_cpy (int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int checkout_update_index(
 checkout_data *data,
 const git_diff_file *file,
 struct stat *st)
{
 git_index_entry entry;

 if (!data->index)
  return 0;

 memset(&entry, 0, sizeof(entry));
 entry.path = (char *)file->path;
 git_index_entry__init_from_stat(&entry, st, 1);
 git_oid_cpy(&entry.id, &file->id);

 return git_index_add(data->index, &entry);
}
