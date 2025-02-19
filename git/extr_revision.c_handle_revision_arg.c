
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {scalar_t__ ignore_missing; int prefix; int repo; } ;
struct object_id {int dummy; } ;
struct object_context {int path; int mode; } ;
struct object {int dummy; } ;


 int BOTTOM ;
 unsigned int GET_OID_COMMITTISH ;
 unsigned int GET_OID_RECORD_PATH ;
 unsigned int REVARG_CANNOT_BE_FILENAME ;
 unsigned int REVARG_COMMITTISH ;
 int REV_CMD_REV ;
 int UNINTERESTING ;
 scalar_t__ add_parents_only (struct rev_info*,char const*,int,int) ;
 int add_pending_object_with_path (struct rev_info*,struct object*,char const*,int ,int ) ;
 int add_rev_cmdline (struct rev_info*,struct object*,char const*,int ,int) ;
 int free (int ) ;
 scalar_t__ get_oid_with_context (int ,char const*,unsigned int,struct object_id*,struct object_context*) ;
 struct object* get_reference (struct rev_info*,char const*,struct object_id*,int) ;
 int handle_dotdot (char const*,struct rev_info*,int,unsigned int) ;
 int strcmp (char const*,char*) ;
 char* strstr (char const*,char*) ;
 int strtoul (char*,char**,int) ;
 int verify_non_filename (int ,char const*) ;

int handle_revision_arg(const char *arg_, struct rev_info *revs, int flags, unsigned revarg_opt)
{
 struct object_context oc;
 char *mark;
 struct object *object;
 struct object_id oid;
 int local_flags;
 const char *arg = arg_;
 int cant_be_filename = revarg_opt & REVARG_CANNOT_BE_FILENAME;
 unsigned get_sha1_flags = GET_OID_RECORD_PATH;

 flags = flags & UNINTERESTING ? flags | BOTTOM : flags & ~BOTTOM;

 if (!cant_be_filename && !strcmp(arg, "..")) {




  return -1;
 }

 if (!handle_dotdot(arg, revs, flags, revarg_opt))
  return 0;

 mark = strstr(arg, "^@");
 if (mark && !mark[2]) {
  *mark = 0;
  if (add_parents_only(revs, arg, flags, 0))
   return 0;
  *mark = '^';
 }
 mark = strstr(arg, "^!");
 if (mark && !mark[2]) {
  *mark = 0;
  if (!add_parents_only(revs, arg, flags ^ (UNINTERESTING | BOTTOM), 0))
   *mark = '^';
 }
 mark = strstr(arg, "^-");
 if (mark) {
  int exclude_parent = 1;

  if (mark[2]) {
   char *end;
   exclude_parent = strtoul(mark + 2, &end, 10);
   if (*end != '\0' || !exclude_parent)
    return -1;
  }

  *mark = 0;
  if (!add_parents_only(revs, arg, flags ^ (UNINTERESTING | BOTTOM), exclude_parent))
   *mark = '^';
 }

 local_flags = 0;
 if (*arg == '^') {
  local_flags = UNINTERESTING | BOTTOM;
  arg++;
 }

 if (revarg_opt & REVARG_COMMITTISH)
  get_sha1_flags |= GET_OID_COMMITTISH;

 if (get_oid_with_context(revs->repo, arg, get_sha1_flags, &oid, &oc))
  return revs->ignore_missing ? 0 : -1;
 if (!cant_be_filename)
  verify_non_filename(revs->prefix, arg);
 object = get_reference(revs, arg, &oid, flags ^ local_flags);
 if (!object)
  return revs->ignore_missing ? 0 : -1;
 add_rev_cmdline(revs, object, arg_, REV_CMD_REV, flags ^ local_flags);
 add_pending_object_with_path(revs, object, arg, oc.mode, oc.path);
 free(oc.path);
 return 0;
}
