
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int git_packfile_stream ;
struct TYPE_3__ {int objbuf; int hash_ctx; int entry_data; scalar_t__ do_verify; } ;
typedef TYPE_1__ git_indexer ;


 int assert (int) ;
 int git_buf_put (int *,int ,scalar_t__) ;
 int git_hash_update (int *,int ,scalar_t__) ;
 scalar_t__ git_packfile_stream_read (int *,int ,int) ;

__attribute__((used)) static int hash_object_stream(git_indexer*idx, git_packfile_stream *stream)
{
 ssize_t read;

 assert(idx && stream);

 do {
  if ((read = git_packfile_stream_read(stream, idx->objbuf, sizeof(idx->objbuf))) < 0)
   break;

  if (idx->do_verify)
   git_buf_put(&idx->entry_data, idx->objbuf, read);

  git_hash_update(&idx->hash_ctx, idx->objbuf, read);
 } while (read > 0);

 if (read < 0)
  return (int)read;

 return 0;
}
