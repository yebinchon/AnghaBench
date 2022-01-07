
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {size_t size; int type; } ;
typedef TYPE_1__ obj_hdr ;
typedef scalar_t__ int64_t ;


 scalar_t__ GIT_ADD_SIZET_OVERFLOW (size_t*,size_t,int) ;
 int GIT_ERROR_OBJECT ;
 scalar_t__ SIZE_MAX ;
 scalar_t__ git__strntol64 (scalar_t__*,char const*,size_t,int *,int) ;
 int git_error_set (int ,char*) ;
 int git_object_stringn2type (char const*,size_t) ;

__attribute__((used)) static int parse_header(
 obj_hdr *out,
        size_t *out_len,
 const unsigned char *_data,
 size_t data_len)
{
 const char *data = (char *)_data;
 size_t i, typename_len, size_idx, size_len;
 int64_t size;

 *out_len = 0;


 for (i = 0, typename_len = 0; i < data_len; i++, typename_len++) {
  if (data[i] == ' ')
   break;
 }

 if (typename_len == data_len)
  goto on_error;

 out->type = git_object_stringn2type(data, typename_len);

 size_idx = typename_len + 1;
 for (i = size_idx, size_len = 0; i < data_len; i++, size_len++) {
  if (data[i] == '\0')
   break;
 }

 if (i == data_len)
  goto on_error;

 if (git__strntol64(&size, &data[size_idx], size_len, ((void*)0), 10) < 0 ||
  size < 0)
  goto on_error;

 if ((uint64_t)size > SIZE_MAX) {
  git_error_set(GIT_ERROR_OBJECT, "object is larger than available memory");
  return -1;
 }

 out->size = (size_t)size;

 if (GIT_ADD_SIZET_OVERFLOW(out_len, i, 1))
  goto on_error;

 return 0;

on_error:
 git_error_set(GIT_ERROR_OBJECT, "failed to parse loose object: invalid header");
 return -1;
}
