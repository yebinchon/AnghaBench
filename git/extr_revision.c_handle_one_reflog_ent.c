
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct object_id {int dummy; } ;


 int handle_one_reflog_commit (struct object_id*,void*) ;

__attribute__((used)) static int handle_one_reflog_ent(struct object_id *ooid, struct object_id *noid,
  const char *email, timestamp_t timestamp, int tz,
  const char *message, void *cb_data)
{
 handle_one_reflog_commit(ooid, cb_data);
 handle_one_reflog_commit(noid, cb_data);
 return 0;
}
