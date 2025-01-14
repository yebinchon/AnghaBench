
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct object_id const object_id ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_BLOB ;
 int blob_type ;
 int free (char*) ;
 int is_null_oid (struct object_id const*) ;
 int memcpy (char*,char*,unsigned long) ;
 int oidcpy (struct object_id const*,struct object_id const*) ;
 char* read_object_file (struct object_id const*,int*,unsigned long*) ;
 int write_object_file (char*,unsigned long,int ,struct object_id const*) ;
 scalar_t__ xmalloc (unsigned long) ;

int combine_notes_concatenate(struct object_id *cur_oid,
         const struct object_id *new_oid)
{
 char *cur_msg = ((void*)0), *new_msg = ((void*)0), *buf;
 unsigned long cur_len, new_len, buf_len;
 enum object_type cur_type, new_type;
 int ret;


 if (!is_null_oid(new_oid))
  new_msg = read_object_file(new_oid, &new_type, &new_len);
 if (!new_msg || !new_len || new_type != OBJ_BLOB) {
  free(new_msg);
  return 0;
 }
 if (!is_null_oid(cur_oid))
  cur_msg = read_object_file(cur_oid, &cur_type, &cur_len);
 if (!cur_msg || !cur_len || cur_type != OBJ_BLOB) {
  free(cur_msg);
  free(new_msg);
  oidcpy(cur_oid, new_oid);
  return 0;
 }


 if (cur_msg[cur_len - 1] == '\n')
  cur_len--;


 buf_len = cur_len + 2 + new_len;
 buf = (char *) xmalloc(buf_len);
 memcpy(buf, cur_msg, cur_len);
 buf[cur_len] = '\n';
 buf[cur_len + 1] = '\n';
 memcpy(buf + cur_len + 2, new_msg, new_len);
 free(cur_msg);
 free(new_msg);


 ret = write_object_file(buf, buf_len, blob_type, cur_oid);
 free(buf);
 return ret;
}
