
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timestamp_t ;
struct object_id {int dummy; } ;
struct read_ref_at_cb {int tz; scalar_t__ date; scalar_t__ at_time; scalar_t__ cnt; int* cutoff_tz; int found_it; struct object_id noid; struct object_id ooid; int refname; struct object_id* oid; scalar_t__ reccnt; scalar_t__* cutoff_cnt; scalar_t__* cutoff_time; int * msg; } ;


 int DATE_MODE (int ) ;
 int RFC2822 ;
 int _ (char*) ;
 int is_null_oid (struct object_id*) ;
 int oidcpy (struct object_id*,struct object_id*) ;
 int oideq (struct object_id*,struct object_id*) ;
 int show_date (scalar_t__,int,int ) ;
 int warning (int ,int ,int ) ;
 int xstrdup (char const*) ;

__attribute__((used)) static int read_ref_at_ent(struct object_id *ooid, struct object_id *noid,
  const char *email, timestamp_t timestamp, int tz,
  const char *message, void *cb_data)
{
 struct read_ref_at_cb *cb = cb_data;

 cb->reccnt++;
 cb->tz = tz;
 cb->date = timestamp;

 if (timestamp <= cb->at_time || cb->cnt == 0) {
  if (cb->msg)
   *cb->msg = xstrdup(message);
  if (cb->cutoff_time)
   *cb->cutoff_time = timestamp;
  if (cb->cutoff_tz)
   *cb->cutoff_tz = tz;
  if (cb->cutoff_cnt)
   *cb->cutoff_cnt = cb->reccnt - 1;




  if (!is_null_oid(&cb->ooid)) {
   oidcpy(cb->oid, noid);
   if (!oideq(&cb->ooid, noid))
    warning(_("log for ref %s has gap after %s"),
     cb->refname, show_date(cb->date, cb->tz, DATE_MODE(RFC2822)));
  }
  else if (cb->date == cb->at_time)
   oidcpy(cb->oid, noid);
  else if (!oideq(noid, cb->oid))
   warning(_("log for ref %s unexpectedly ended on %s"),
    cb->refname, show_date(cb->date, cb->tz,
             DATE_MODE(RFC2822)));
  oidcpy(&cb->ooid, ooid);
  oidcpy(&cb->noid, noid);
  cb->found_it = 1;
  return 1;
 }
 oidcpy(&cb->ooid, ooid);
 oidcpy(&cb->noid, noid);
 if (cb->cnt > 0)
  cb->cnt--;
 return 0;
}
