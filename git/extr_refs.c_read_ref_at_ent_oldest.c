
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct read_ref_at_cb {int* cutoff_tz; int oid; int reccnt; int * cutoff_cnt; int * cutoff_time; int * msg; } ;
struct object_id {int dummy; } ;


 scalar_t__ is_null_oid (int ) ;
 int oidcpy (int ,struct object_id*) ;
 int xstrdup (char const*) ;

__attribute__((used)) static int read_ref_at_ent_oldest(struct object_id *ooid, struct object_id *noid,
      const char *email, timestamp_t timestamp,
      int tz, const char *message, void *cb_data)
{
 struct read_ref_at_cb *cb = cb_data;

 if (cb->msg)
  *cb->msg = xstrdup(message);
 if (cb->cutoff_time)
  *cb->cutoff_time = timestamp;
 if (cb->cutoff_tz)
  *cb->cutoff_tz = tz;
 if (cb->cutoff_cnt)
  *cb->cutoff_cnt = cb->reccnt;
 oidcpy(cb->oid, ooid);
 if (is_null_oid(cb->oid))
  oidcpy(cb->oid, noid);

 return 1;
}
