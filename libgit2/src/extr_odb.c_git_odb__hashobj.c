
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int header ;
struct TYPE_5__ {char* data; size_t len; int type; } ;
typedef TYPE_1__ git_rawobj ;
typedef int git_oid ;
struct TYPE_6__ {char* data; size_t len; } ;
typedef TYPE_2__ git_buf_vec ;


 int GIT_ERROR_INVALID ;
 int assert (int) ;
 int git_error_set (int ,char*) ;
 int git_hash_vec (int *,TYPE_2__*,int) ;
 int git_object_typeisloose (int ) ;
 int git_odb__format_object_header (size_t*,char*,int,size_t,int ) ;

int git_odb__hashobj(git_oid *id, git_rawobj *obj)
{
 git_buf_vec vec[2];
 char header[64];
 size_t hdrlen;
 int error;

 assert(id && obj);

 if (!git_object_typeisloose(obj->type)) {
  git_error_set(GIT_ERROR_INVALID, "invalid object type");
  return -1;
 }

 if (!obj->data && obj->len != 0) {
  git_error_set(GIT_ERROR_INVALID, "invalid object");
  return -1;
 }

 if ((error = git_odb__format_object_header(&hdrlen,
  header, sizeof(header), obj->len, obj->type)) < 0)
  return error;

 vec[0].data = header;
 vec[0].len = hdrlen;
 vec[1].data = obj->data;
 vec[1].len = obj->len;

 return git_hash_vec(id, vec, 2);
}
