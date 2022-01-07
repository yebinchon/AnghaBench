
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_signature ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ git_reference ;
typedef int git_refdb_backend ;
typedef int git_filebuf ;


 int git__free (int *) ;
 int git_filebuf_cleanup (int *) ;
 int refdb_fs_backend__delete_tail (int *,int *,int ,int *,int *) ;
 int refdb_fs_backend__write_tail (int *,TYPE_1__ const*,int *,int,int *,int *,int const*,char const*) ;

__attribute__((used)) static int refdb_fs_backend__unlock(git_refdb_backend *backend, void *payload, int success, int update_reflog,
        const git_reference *ref, const git_signature *sig, const char *message)
{
 git_filebuf *lock = (git_filebuf *) payload;
 int error = 0;

 if (success == 2)
  error = refdb_fs_backend__delete_tail(backend, lock, ref->name, ((void*)0), ((void*)0));
 else if (success)
  error = refdb_fs_backend__write_tail(backend, ref, lock, update_reflog, ((void*)0), ((void*)0), sig, message);
 else
  git_filebuf_cleanup(lock);

 git__free(lock);
 return error;
}
