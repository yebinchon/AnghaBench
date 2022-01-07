
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct oid_array {int dummy; } ;
struct object_id {int* hash; } ;
struct object_directory {int* loose_objects_subdir_seen; struct oid_array* loose_objects_cache; int path; } ;


 int ARRAY_SIZE (int*) ;
 int BUG (char*) ;
 struct strbuf STRBUF_INIT ;
 int append_loose_object ;
 int for_each_file_in_obj_subdir (int,struct strbuf*,int ,int *,int *,struct oid_array*) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;

struct oid_array *odb_loose_cache(struct object_directory *odb,
      const struct object_id *oid)
{
 int subdir_nr = oid->hash[0];
 struct strbuf buf = STRBUF_INIT;

 if (subdir_nr < 0 ||
     subdir_nr >= ARRAY_SIZE(odb->loose_objects_subdir_seen))
  BUG("subdir_nr out of range");

 if (odb->loose_objects_subdir_seen[subdir_nr])
  return &odb->loose_objects_cache[subdir_nr];

 strbuf_addstr(&buf, odb->path);
 for_each_file_in_obj_subdir(subdir_nr, &buf,
        append_loose_object,
        ((void*)0), ((void*)0),
        &odb->loose_objects_cache[subdir_nr]);
 odb->loose_objects_subdir_seen[subdir_nr] = 1;
 strbuf_release(&buf);
 return &odb->loose_objects_cache[subdir_nr];
}
