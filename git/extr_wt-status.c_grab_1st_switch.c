
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int timestamp_t ;
struct object_id {int dummy; } ;
struct TYPE_4__ {int buf; } ;
struct grab_1st_switch_cbdata {TYPE_1__ buf; int noid; } ;


 int DEFAULT_ABBREV ;
 int oidcpy (int *,struct object_id*) ;
 int skip_prefix (char const*,char*,char const**) ;
 int strbuf_add (TYPE_1__*,char const*,int) ;
 int strbuf_add_unique_abbrev (TYPE_1__*,struct object_id*,int ) ;
 int strbuf_reset (TYPE_1__*) ;
 char* strchrnul (char const*,char) ;
 int strcmp (int ,char*) ;
 int strlen (char*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int grab_1st_switch(struct object_id *ooid, struct object_id *noid,
      const char *email, timestamp_t timestamp, int tz,
      const char *message, void *cb_data)
{
 struct grab_1st_switch_cbdata *cb = cb_data;
 const char *target = ((void*)0), *end;

 if (!skip_prefix(message, "checkout: moving from ", &message))
  return 0;
 target = strstr(message, " to ");
 if (!target)
  return 0;
 target += strlen(" to ");
 strbuf_reset(&cb->buf);
 oidcpy(&cb->noid, noid);
 end = strchrnul(target, '\n');
 strbuf_add(&cb->buf, target, end - target);
 if (!strcmp(cb->buf.buf, "HEAD")) {

  strbuf_reset(&cb->buf);
  strbuf_add_unique_abbrev(&cb->buf, noid, DEFAULT_ABBREV);
 }
 return 1;
}
