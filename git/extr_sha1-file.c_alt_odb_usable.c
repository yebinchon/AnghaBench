
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct raw_object_store {struct object_directory* odb; } ;
struct object_directory {char const* path; struct object_directory* next; } ;


 int _ (char*) ;
 int error (int ,int ) ;
 int fspathcmp (int ,char const*) ;
 int is_directory (int ) ;

__attribute__((used)) static int alt_odb_usable(struct raw_object_store *o,
     struct strbuf *path,
     const char *normalized_objdir)
{
 struct object_directory *odb;


 if (!is_directory(path->buf)) {
  error(_("object directory %s does not exist; "
   "check .git/objects/info/alternates"),
        path->buf);
  return 0;
 }





 for (odb = o->odb; odb; odb = odb->next) {
  if (!fspathcmp(path->buf, odb->path))
   return 0;
 }
 if (!fspathcmp(path->buf, normalized_objdir))
  return 0;

 return 1;
}
