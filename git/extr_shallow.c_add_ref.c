
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct commit_array {int nr; scalar_t__* commits; int alloc; } ;


 int ALLOC_GROW (scalar_t__*,int,int ) ;
 scalar_t__ lookup_commit_reference_gently (int ,struct object_id const*,int) ;
 int the_repository ;

__attribute__((used)) static int add_ref(const char *refname, const struct object_id *oid,
     int flags, void *cb_data)
{
 struct commit_array *ca = cb_data;
 ALLOC_GROW(ca->commits, ca->nr + 1, ca->alloc);
 ca->commits[ca->nr] = lookup_commit_reference_gently(the_repository,
            oid, 1);
 if (ca->commits[ca->nr])
  ca->nr++;
 return 0;
}
