
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct cache_entry {int oid; int name; } ;


 int oideq (struct object_id*,int *) ;
 scalar_t__ resolve_gitlink_ref (int ,char*,struct object_id*) ;

__attribute__((used)) static int ce_compare_gitlink(const struct cache_entry *ce)
{
 struct object_id oid;
 if (resolve_gitlink_ref(ce->name, "HEAD", &oid) < 0)
  return 0;
 return !oideq(&oid, &ce->oid);
}
