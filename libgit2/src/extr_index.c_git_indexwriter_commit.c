
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int member_0; } ;
struct TYPE_11__ {TYPE_1__ member_0; } ;
typedef TYPE_2__ git_oid ;
struct TYPE_12__ {TYPE_5__* index; int file; int should_write; } ;
typedef TYPE_3__ git_indexwriter ;
struct TYPE_13__ {int on_disk; int checksum; scalar_t__ dirty; int index_file_path; int stamp; int reuc; int entries; } ;


 int GIT_ERROR_OS ;
 int git_error_set (int ,char*) ;
 int git_filebuf_commit (int *) ;
 int git_futils_filestamp_check (int *,int ) ;
 int git_index_free (TYPE_5__*) ;
 int git_indexwriter_cleanup (TYPE_3__*) ;
 int git_oid_cpy (int *,TYPE_2__*) ;
 int git_vector_sort (int *) ;
 int write_index (TYPE_2__*,TYPE_5__*,int *) ;

int git_indexwriter_commit(git_indexwriter *writer)
{
 int error;
 git_oid checksum = {{ 0 }};

 if (!writer->should_write)
  return 0;

 git_vector_sort(&writer->index->entries);
 git_vector_sort(&writer->index->reuc);

 if ((error = write_index(&checksum, writer->index, &writer->file)) < 0) {
  git_indexwriter_cleanup(writer);
  return error;
 }

 if ((error = git_filebuf_commit(&writer->file)) < 0)
  return error;

 if ((error = git_futils_filestamp_check(
  &writer->index->stamp, writer->index->index_file_path)) < 0) {
  git_error_set(GIT_ERROR_OS, "could not read index timestamp");
  return -1;
 }

 writer->index->dirty = 0;
 writer->index->on_disk = 1;
 git_oid_cpy(&writer->index->checksum, &checksum);

 git_index_free(writer->index);
 writer->index = ((void*)0);

 return 0;
}
