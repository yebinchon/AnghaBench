
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct object_id {int dummy; } ;



__attribute__((used)) static int stash_count_refs(struct object_id *ooid, struct object_id *noid,
       const char *email, timestamp_t timestamp, int tz,
       const char *message, void *cb_data)
{
 int *c = cb_data;
 (*c)++;
 return 0;
}
