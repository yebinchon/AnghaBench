
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int header ;
typedef int git_off_t ;
typedef int git_object_t ;
typedef int git_hash_ctx ;


 int git_hash_update (int *,char*,size_t) ;
 int git_odb__format_object_header (size_t*,char*,int,int ,int ) ;

__attribute__((used)) static int hash_header(git_hash_ctx *ctx, git_off_t size, git_object_t type)
{
 char header[64];
 size_t hdrlen;
 int error;

  if ((error = git_odb__format_object_header(&hdrlen,
  header, sizeof(header), size, type)) < 0)
  return error;

 return git_hash_update(ctx, header, hdrlen);
}
