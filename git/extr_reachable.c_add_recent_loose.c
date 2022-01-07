
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mtime; } ;
struct object_id {int dummy; } ;
struct object {int flags; } ;


 scalar_t__ ENOENT ;
 int SEEN ;
 int add_recent_object (struct object_id const*,int ,void*) ;
 scalar_t__ errno ;
 int error_errno (char*,int ) ;
 struct object* lookup_object (int ,struct object_id const*) ;
 int oid_to_hex (struct object_id const*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int the_repository ;

__attribute__((used)) static int add_recent_loose(const struct object_id *oid,
       const char *path, void *data)
{
 struct stat st;
 struct object *obj = lookup_object(the_repository, oid);

 if (obj && obj->flags & SEEN)
  return 0;

 if (stat(path, &st) < 0) {






  if (errno == ENOENT)
   return 0;
  return error_errno("unable to stat %s", oid_to_hex(oid));
 }

 add_recent_object(oid, st.st_mtime, data);
 return 0;
}
