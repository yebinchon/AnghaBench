
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct reflog_info {int tz; void* message; int timestamp; void* email; int noid; int ooid; } ;
struct object_id {int dummy; } ;
struct complete_reflogs {int nr; struct reflog_info* items; int alloc; } ;


 int ALLOC_GROW (struct reflog_info*,int,int ) ;
 int oidcpy (int *,struct object_id*) ;
 void* xstrdup (char const*) ;

__attribute__((used)) static int read_one_reflog(struct object_id *ooid, struct object_id *noid,
  const char *email, timestamp_t timestamp, int tz,
  const char *message, void *cb_data)
{
 struct complete_reflogs *array = cb_data;
 struct reflog_info *item;

 ALLOC_GROW(array->items, array->nr + 1, array->alloc);
 item = array->items + array->nr;
 oidcpy(&item->ooid, ooid);
 oidcpy(&item->noid, noid);
 item->email = xstrdup(email);
 item->timestamp = timestamp;
 item->tz = tz;
 item->message = xstrdup(message);
 array->nr++;
 return 0;
}
