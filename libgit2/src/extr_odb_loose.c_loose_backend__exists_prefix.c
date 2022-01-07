
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loose_backend ;
typedef int git_oid ;
typedef int git_odb_backend ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 size_t GIT_OID_MINPREFIXLEN ;
 int assert (int) ;
 int git_buf_dispose (int *) ;
 int locate_object_short_oid (int *,int *,int *,int const*,size_t) ;

__attribute__((used)) static int loose_backend__exists_prefix(
 git_oid *out, git_odb_backend *backend, const git_oid *short_id, size_t len)
{
 git_buf object_path = GIT_BUF_INIT;
 int error;

 assert(backend && out && short_id && len >= GIT_OID_MINPREFIXLEN);

 error = locate_object_short_oid(
  &object_path, out, (loose_backend *)backend, short_id, len);

 git_buf_dispose(&object_path);

 return error;
}
