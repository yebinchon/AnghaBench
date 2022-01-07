
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_off_t ;
typedef int git_odb ;
typedef int git_filter_list ;
struct TYPE_5__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_OBJECT_BLOB ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_filter_list_apply_to_file (TYPE_1__*,int *,int *,char const*) ;
 int git_odb_write (int *,int *,int ,int ,int ) ;

__attribute__((used)) static int write_file_filtered(
 git_oid *id,
 git_off_t *size,
 git_odb *odb,
 const char *full_path,
 git_filter_list *fl)
{
 int error;
 git_buf tgt = GIT_BUF_INIT;

 error = git_filter_list_apply_to_file(&tgt, fl, ((void*)0), full_path);


 if (!error) {
  *size = tgt.size;

  error = git_odb_write(id, odb, tgt.ptr, tgt.size, GIT_OBJECT_BLOB);
 }

 git_buf_dispose(&tgt);
 return error;
}
