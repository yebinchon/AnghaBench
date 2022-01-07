
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_BLOB ;
 int error (char*,char const*) ;
 int free (char*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int read_mailmap_string (struct string_list*,char*,char**) ;
 char* read_object_file (struct object_id*,int*,unsigned long*) ;

__attribute__((used)) static int read_mailmap_blob(struct string_list *map,
        const char *name,
        char **repo_abbrev)
{
 struct object_id oid;
 char *buf;
 unsigned long size;
 enum object_type type;

 if (!name)
  return 0;
 if (get_oid(name, &oid) < 0)
  return 0;

 buf = read_object_file(&oid, &type, &size);
 if (!buf)
  return error("unable to read mailmap object at %s", name);
 if (type != OBJ_BLOB)
  return error("mailmap is not a blob: %s", name);

 read_mailmap_string(map, buf, repo_abbrev);

 free(buf);
 return 0;
}
