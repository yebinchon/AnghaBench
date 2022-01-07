
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int loose_backend ;
struct TYPE_3__ {size_t len; int type; } ;
typedef TYPE_1__ git_rawobj ;
typedef int git_oid ;
typedef int git_odb_backend ;
typedef int git_object_t ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_OBJECT_INVALID ;
 int GIT_OID_HEXSZ ;
 int assert (int) ;
 int git_buf_dispose (int *) ;
 int git_odb__error_notfound (char*,int const*,int ) ;
 scalar_t__ locate_object (int *,int *,int const*) ;
 int read_header_loose (TYPE_1__*,int *) ;

__attribute__((used)) static int loose_backend__read_header(size_t *len_p, git_object_t *type_p, git_odb_backend *backend, const git_oid *oid)
{
 git_buf object_path = GIT_BUF_INIT;
 git_rawobj raw;
 int error;

 assert(backend && oid);

 raw.len = 0;
 raw.type = GIT_OBJECT_INVALID;

 if (locate_object(&object_path, (loose_backend *)backend, oid) < 0) {
  error = git_odb__error_notfound("no matching loose object",
   oid, GIT_OID_HEXSZ);
 } else if ((error = read_header_loose(&raw, &object_path)) == 0) {
  *len_p = raw.len;
  *type_p = raw.type;
 }

 git_buf_dispose(&object_path);

 return error;
}
