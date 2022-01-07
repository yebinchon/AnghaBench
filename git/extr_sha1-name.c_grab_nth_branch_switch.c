
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct object_id {int dummy; } ;
struct grab_nth_branch_switch_cbdata {scalar_t__ remaining; int sb; } ;


 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strbuf_add (int ,char const*,size_t) ;
 int strbuf_reset (int ) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int grab_nth_branch_switch(struct object_id *ooid, struct object_id *noid,
      const char *email, timestamp_t timestamp, int tz,
      const char *message, void *cb_data)
{
 struct grab_nth_branch_switch_cbdata *cb = cb_data;
 const char *match = ((void*)0), *target = ((void*)0);
 size_t len;

 if (skip_prefix(message, "checkout: moving from ", &match))
  target = strstr(match, " to ");

 if (!match || !target)
  return 0;
 if (--(cb->remaining) == 0) {
  len = target - match;
  strbuf_reset(cb->sb);
  strbuf_add(cb->sb, match, len);
  return 1;
 }
 return 0;
}
