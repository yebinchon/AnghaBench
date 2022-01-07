
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_odb_object ;
typedef int git_odb ;
struct TYPE_5__ {char* ptr; int size; int mode; int path; } ;
typedef TYPE_1__ git_merge_file_input ;
struct TYPE_6__ {int mode; int path; int id; } ;
typedef TYPE_2__ git_index_entry ;


 int assert (int ) ;
 scalar_t__ git_odb_object_data (int *) ;
 int git_odb_object_size (int *) ;
 int git_odb_read (int **,int *,int *) ;

int git_merge_file__input_from_index(
 git_merge_file_input *input_out,
 git_odb_object **odb_object_out,
 git_odb *odb,
 const git_index_entry *entry)
{
 int error = 0;

 assert(input_out && odb_object_out && odb && entry);

 if ((error = git_odb_read(odb_object_out, odb, &entry->id)) < 0)
  goto done;

 input_out->path = entry->path;
 input_out->mode = entry->mode;
 input_out->ptr = (char *)git_odb_object_data(*odb_object_out);
 input_out->size = git_odb_object_size(*odb_object_out);

done:
 return error;
}
