
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct ref {int status; int forced_update; char* remote_status; } ;


 int FREE_AND_NULL (char*) ;
 int REF_STATUS_NONE ;
 int REF_STATUS_OK ;
 int REF_STATUS_REJECT_ALREADY_EXISTS ;
 int REF_STATUS_REJECT_FETCH_FIRST ;
 int REF_STATUS_REJECT_NEEDS_FORCE ;
 int REF_STATUS_REJECT_NONFASTFORWARD ;
 int REF_STATUS_REJECT_STALE ;
 int REF_STATUS_REMOTE_REJECT ;
 int REF_STATUS_UPTODATE ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (int ,char*) ;
 struct ref* find_ref_by_name (struct ref*,char*) ;
 scalar_t__ starts_with (char*,char*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 int unquote_c_style (struct strbuf*,char*,char const**) ;
 int warning (int ,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static int push_update_ref_status(struct strbuf *buf,
       struct ref **ref,
       struct ref *remote_refs)
{
 char *refname, *msg;
 int status, forced = 0;

 if (starts_with(buf->buf, "ok ")) {
  status = REF_STATUS_OK;
  refname = buf->buf + 3;
 } else if (starts_with(buf->buf, "error ")) {
  status = REF_STATUS_REMOTE_REJECT;
  refname = buf->buf + 6;
 } else
  die(_("expected ok/error, helper said '%s'"), buf->buf);

 msg = strchr(refname, ' ');
 if (msg) {
  struct strbuf msg_buf = STRBUF_INIT;
  const char *end;

  *msg++ = '\0';
  if (!unquote_c_style(&msg_buf, msg, &end))
   msg = strbuf_detach(&msg_buf, ((void*)0));
  else
   msg = xstrdup(msg);
  strbuf_release(&msg_buf);

  if (!strcmp(msg, "no match")) {
   status = REF_STATUS_NONE;
   FREE_AND_NULL(msg);
  }
  else if (!strcmp(msg, "up to date")) {
   status = REF_STATUS_UPTODATE;
   FREE_AND_NULL(msg);
  }
  else if (!strcmp(msg, "non-fast forward")) {
   status = REF_STATUS_REJECT_NONFASTFORWARD;
   FREE_AND_NULL(msg);
  }
  else if (!strcmp(msg, "already exists")) {
   status = REF_STATUS_REJECT_ALREADY_EXISTS;
   FREE_AND_NULL(msg);
  }
  else if (!strcmp(msg, "fetch first")) {
   status = REF_STATUS_REJECT_FETCH_FIRST;
   FREE_AND_NULL(msg);
  }
  else if (!strcmp(msg, "needs force")) {
   status = REF_STATUS_REJECT_NEEDS_FORCE;
   FREE_AND_NULL(msg);
  }
  else if (!strcmp(msg, "stale info")) {
   status = REF_STATUS_REJECT_STALE;
   FREE_AND_NULL(msg);
  }
  else if (!strcmp(msg, "forced update")) {
   forced = 1;
   FREE_AND_NULL(msg);
  }
 }

 if (*ref)
  *ref = find_ref_by_name(*ref, refname);
 if (!*ref)
  *ref = find_ref_by_name(remote_refs, refname);
 if (!*ref) {
  warning(_("helper reported unexpected status of %s"), refname);
  return 1;
 }

 if ((*ref)->status != REF_STATUS_NONE) {




  if (status == REF_STATUS_NONE)
   return 1;
 }

 (*ref)->status = status;
 (*ref)->forced_update |= forced;
 (*ref)->remote_status = msg;
 return !(status == REF_STATUS_OK);
}
