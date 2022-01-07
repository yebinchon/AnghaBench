
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct promisor_remote {int name; struct promisor_remote* next; } ;
struct object_id {int dummy; } ;


 scalar_t__ fetch_objects (int ,struct object_id*,int) ;
 int free (struct object_id*) ;
 int promisor_remote_init () ;
 struct promisor_remote* promisors ;
 int remove_fetched_oids (struct repository*,struct object_id**,int,int) ;

int promisor_remote_get_direct(struct repository *repo,
          const struct object_id *oids,
          int oid_nr)
{
 struct promisor_remote *r;
 struct object_id *remaining_oids = (struct object_id *)oids;
 int remaining_nr = oid_nr;
 int to_free = 0;
 int res = -1;

 promisor_remote_init();

 for (r = promisors; r; r = r->next) {
  if (fetch_objects(r->name, remaining_oids, remaining_nr) < 0) {
   if (remaining_nr == 1)
    continue;
   remaining_nr = remove_fetched_oids(repo, &remaining_oids,
        remaining_nr, to_free);
   if (remaining_nr) {
    to_free = 1;
    continue;
   }
  }
  res = 0;
  break;
 }

 if (to_free)
  free(remaining_oids);

 return res;
}
