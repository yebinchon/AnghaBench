
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_BLOB ;
 int free (char*) ;
 scalar_t__ is_null_oid (struct object_id const*) ;
 char* read_object_file (struct object_id const*,int*,unsigned long*) ;
 int string_list_split (struct string_list*,char*,char,int) ;

__attribute__((used)) static int string_list_add_note_lines(struct string_list *list,
          const struct object_id *oid)
{
 char *data;
 unsigned long len;
 enum object_type t;

 if (is_null_oid(oid))
  return 0;


 data = read_object_file(oid, &t, &len);
 if (t != OBJ_BLOB || !data || !len) {
  free(data);
  return t != OBJ_BLOB || !data;
 }







 string_list_split(list, data, '\n', -1);
 free(data);
 return 0;
}
