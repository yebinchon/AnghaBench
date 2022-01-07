
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct repository {TYPE_1__* objects; } ;
struct TYPE_4__ {int oid; } ;
struct replace_object {int replacement; TYPE_2__ original; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {int replace_map; } ;


 int _ (char*) ;
 int die (int ,char const*) ;
 int free (struct replace_object*) ;
 scalar_t__ get_oid_hex (char const*,int *) ;
 int oidcpy (int *,struct object_id const*) ;
 scalar_t__ oidmap_put (int ,struct replace_object*) ;
 char* strrchr (char const*,char) ;
 int warning (int ,char const*) ;
 struct replace_object* xmalloc (int) ;

__attribute__((used)) static int register_replace_ref(struct repository *r,
    const char *refname,
    const struct object_id *oid,
    int flag, void *cb_data)
{

 const char *slash = strrchr(refname, '/');
 const char *hash = slash ? slash + 1 : refname;
 struct replace_object *repl_obj = xmalloc(sizeof(*repl_obj));

 if (get_oid_hex(hash, &repl_obj->original.oid)) {
  free(repl_obj);
  warning(_("bad replace ref name: %s"), refname);
  return 0;
 }


 oidcpy(&repl_obj->replacement, oid);


 if (oidmap_put(r->objects->replace_map, repl_obj))
  die(_("duplicate replace ref: %s"), refname);

 return 0;
}
