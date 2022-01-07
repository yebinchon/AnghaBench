
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_5__ {scalar_t__ compute_digest; int digest; } ;
typedef TYPE_1__ git_filebuf ;


 int assert (int) ;
 int flush_buffer (TYPE_1__*) ;
 int git_hash_ctx_cleanup (int *) ;
 int git_hash_final (int *,int *) ;
 scalar_t__ verify_last_error (TYPE_1__*) ;

int git_filebuf_hash(git_oid *oid, git_filebuf *file)
{
 assert(oid && file && file->compute_digest);

 flush_buffer(file);

 if (verify_last_error(file) < 0)
  return -1;

 git_hash_final(oid, &file->digest);
 git_hash_ctx_cleanup(&file->digest);
 file->compute_digest = 0;

 return 0;
}
