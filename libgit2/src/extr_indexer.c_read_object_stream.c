
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int git_packfile_stream ;
struct TYPE_3__ {int objbuf; } ;
typedef TYPE_1__ git_indexer ;


 int assert (int *) ;
 scalar_t__ git_packfile_stream_read (int *,int ,int) ;

__attribute__((used)) static int read_object_stream(git_indexer *idx, git_packfile_stream *stream)
{
 ssize_t read;

 assert(stream);

 do {
  read = git_packfile_stream_read(stream, idx->objbuf, sizeof(idx->objbuf));
 } while (read > 0);

 if (read < 0)
  return (int)read;

 return 0;
}
