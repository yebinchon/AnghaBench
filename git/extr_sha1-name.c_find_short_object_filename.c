
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct oid_array {int nr; struct object_id* oid; } ;
struct object_id {int hash; } ;
struct object_directory {struct object_directory* next; } ;
struct TYPE_7__ {int hash; } ;
struct disambiguate_state {TYPE_3__ bin_pfx; int len; int ambiguous; TYPE_2__* repo; } ;
struct TYPE_6__ {TYPE_1__* objects; } ;
struct TYPE_5__ {struct object_directory* odb; } ;


 int match_sha (int ,int ,int ) ;
 struct oid_array* odb_loose_cache (struct object_directory*,TYPE_3__*) ;
 int oid_array_lookup (struct oid_array*,TYPE_3__*) ;
 int update_candidates (struct disambiguate_state*,struct object_id const*) ;

__attribute__((used)) static void find_short_object_filename(struct disambiguate_state *ds)
{
 struct object_directory *odb;

 for (odb = ds->repo->objects->odb; odb && !ds->ambiguous; odb = odb->next) {
  int pos;
  struct oid_array *loose_objects;

  loose_objects = odb_loose_cache(odb, &ds->bin_pfx);
  pos = oid_array_lookup(loose_objects, &ds->bin_pfx);
  if (pos < 0)
   pos = -1 - pos;
  while (!ds->ambiguous && pos < loose_objects->nr) {
   const struct object_id *oid;
   oid = loose_objects->oid + pos;
   if (!match_sha(ds->len, ds->bin_pfx.hash, oid->hash))
    break;
   update_candidates(ds, oid);
   pos++;
  }
 }
}
