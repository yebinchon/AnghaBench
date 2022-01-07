
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int loose_backend ;
struct TYPE_3__ {size_t len; int type; void* data; } ;
typedef TYPE_1__ git_rawobj ;
typedef int git_oid ;
typedef int git_odb_backend ;
typedef int git_object_t ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 size_t GIT_OID_HEXSZ ;
 size_t GIT_OID_MINPREFIXLEN ;
 int assert (int) ;
 int git_buf_dispose (int *) ;
 int git_oid_cpy (int *,int const*) ;
 int locate_object_short_oid (int *,int *,int *,int const*,size_t) ;
 int loose_backend__read (void**,size_t*,int *,int *,int const*) ;
 int read_loose (TYPE_1__*,int *) ;

__attribute__((used)) static int loose_backend__read_prefix(
 git_oid *out_oid,
 void **buffer_p,
 size_t *len_p,
 git_object_t *type_p,
 git_odb_backend *backend,
 const git_oid *short_oid,
 size_t len)
{
 int error = 0;

 assert(len >= GIT_OID_MINPREFIXLEN && len <= GIT_OID_HEXSZ);

 if (len == GIT_OID_HEXSZ) {

  error = loose_backend__read(buffer_p, len_p, type_p, backend, short_oid);
  if (!error)
   git_oid_cpy(out_oid, short_oid);
 } else {
  git_buf object_path = GIT_BUF_INIT;
  git_rawobj raw;

  assert(backend && short_oid);

  if ((error = locate_object_short_oid(&object_path, out_oid,
    (loose_backend *)backend, short_oid, len)) == 0 &&
   (error = read_loose(&raw, &object_path)) == 0)
  {
   *buffer_p = raw.data;
   *len_p = raw.len;
   *type_p = raw.type;
  }

  git_buf_dispose(&object_path);
 }

 return error;
}
