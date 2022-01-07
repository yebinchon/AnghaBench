
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct disambiguate_state {int candidate_ok; int candidate; int cb_data; int repo; scalar_t__ (* fn ) (int ,int *,int ) ;int disambiguate_fn_used; int candidate_checked; int candidate_exists; scalar_t__ ambiguous; } ;


 int MISSING_OBJECT ;
 int SHORT_NAME_AMBIGUOUS ;
 int oidcpy (struct object_id*,int *) ;
 scalar_t__ stub1 (int ,int *,int ) ;

__attribute__((used)) static int finish_object_disambiguation(struct disambiguate_state *ds,
     struct object_id *oid)
{
 if (ds->ambiguous)
  return SHORT_NAME_AMBIGUOUS;

 if (!ds->candidate_exists)
  return MISSING_OBJECT;

 if (!ds->candidate_checked)
  ds->candidate_ok = (!ds->disambiguate_fn_used ||
        ds->fn(ds->repo, &ds->candidate, ds->cb_data));

 if (!ds->candidate_ok)
  return SHORT_NAME_AMBIGUOUS;

 oidcpy(oid, &ds->candidate);
 return 0;
}
