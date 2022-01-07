
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_writestream ;
typedef int git_oid ;


 int git_blob_create_from_stream_commit (int *,int *) ;

int git_blob_create_fromstream_commit(
 git_oid *out,
 git_writestream *stream)
{
 return git_blob_create_from_stream_commit(out, stream);
}
