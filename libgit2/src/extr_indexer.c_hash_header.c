
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ git_off_t ;
typedef int git_object_t ;
typedef int git_hash_ctx ;
typedef int buffer ;


 int git_hash_update (int *,char*,size_t) ;
 int git_odb__format_object_header (size_t*,char*,int,size_t,int ) ;

__attribute__((used)) static int hash_header(git_hash_ctx *ctx, git_off_t len, git_object_t type)
{
 char buffer[64];
 size_t hdrlen;
 int error;

 if ((error = git_odb__format_object_header(&hdrlen,
  buffer, sizeof(buffer), (size_t)len, type)) < 0)
  return error;

 return git_hash_update(ctx, buffer, hdrlen);
}
