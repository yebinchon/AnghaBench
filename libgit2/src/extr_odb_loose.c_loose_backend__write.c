
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int object_file_mode; int objects_dir; } ;
typedef TYPE_1__ loose_backend ;
typedef int header ;
typedef int git_oid ;
typedef int git_odb_backend ;
typedef int git_object_t ;
typedef int git_filebuf ;
struct TYPE_12__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_FILEBUF_INIT ;
 int MAX_HEADER_LEN ;
 int filebuf_flags (TYPE_1__*) ;
 int git_buf_dispose (TYPE_2__*) ;
 scalar_t__ git_buf_joinpath (TYPE_2__*,int ,char*) ;
 int git_filebuf_cleanup (int *) ;
 scalar_t__ git_filebuf_commit_at (int *,int ) ;
 scalar_t__ git_filebuf_open (int *,int ,int ,int ) ;
 int git_filebuf_write (int *,void const*,size_t) ;
 int git_odb__format_object_header (size_t*,char*,int,size_t,int ) ;
 scalar_t__ object_file_name (TYPE_2__*,TYPE_1__*,int const*) ;
 scalar_t__ object_mkdir (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static int loose_backend__write(git_odb_backend *_backend, const git_oid *oid, const void *data, size_t len, git_object_t type)
{
 int error = 0;
 git_buf final_path = GIT_BUF_INIT;
 char header[MAX_HEADER_LEN];
 size_t header_len;
 git_filebuf fbuf = GIT_FILEBUF_INIT;
 loose_backend *backend;

 backend = (loose_backend *)_backend;


 if ((error = git_odb__format_object_header(&header_len,
  header, sizeof(header), len, type)) < 0)
  goto cleanup;

 if (git_buf_joinpath(&final_path, backend->objects_dir, "tmp_object") < 0 ||
  git_filebuf_open(&fbuf, final_path.ptr, filebuf_flags(backend),
   backend->object_file_mode) < 0)
 {
  error = -1;
  goto cleanup;
 }

 git_filebuf_write(&fbuf, header, header_len);
 git_filebuf_write(&fbuf, data, len);

 if (object_file_name(&final_path, backend, oid) < 0 ||
  object_mkdir(&final_path, backend) < 0 ||
  git_filebuf_commit_at(&fbuf, final_path.ptr) < 0)
  error = -1;

cleanup:
 if (error < 0)
  git_filebuf_cleanup(&fbuf);
 git_buf_dispose(&final_path);
 return error;
}
