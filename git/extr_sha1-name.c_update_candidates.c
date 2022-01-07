
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct disambiguate_state {int ambiguous; int candidate_exists; int candidate_checked; int disambiguate_fn_used; scalar_t__ candidate_ok; int cb_data; int repo; scalar_t__ (* fn ) (int ,struct object_id const*,int ) ;struct object_id const candidate; scalar_t__ always_call_fn; } ;


 int oidcpy (struct object_id const*,struct object_id const*) ;
 scalar_t__ oideq (struct object_id const*,struct object_id const*) ;
 scalar_t__ stub1 (int ,struct object_id const*,int ) ;
 scalar_t__ stub2 (int ,struct object_id const*,int ) ;
 scalar_t__ stub3 (int ,struct object_id const*,int ) ;

__attribute__((used)) static void update_candidates(struct disambiguate_state *ds, const struct object_id *current)
{
 if (ds->always_call_fn) {
  ds->ambiguous = ds->fn(ds->repo, current, ds->cb_data) ? 1 : 0;
  return;
 }
 if (!ds->candidate_exists) {

  oidcpy(&ds->candidate, current);
  ds->candidate_exists = 1;
  return;
 } else if (oideq(&ds->candidate, current)) {

  return;
 }

 if (!ds->fn) {

  ds->ambiguous = 1;
  return;
 }

 if (!ds->candidate_checked) {
  ds->candidate_ok = ds->fn(ds->repo, &ds->candidate, ds->cb_data);
  ds->disambiguate_fn_used = 1;
  ds->candidate_checked = 1;
 }

 if (!ds->candidate_ok) {

  oidcpy(&ds->candidate, current);
  ds->candidate_checked = 0;
  return;
 }


 if (ds->fn(ds->repo, current, ds->cb_data)) {




  ds->candidate_ok = 0;
  ds->ambiguous = 1;
 }


}
