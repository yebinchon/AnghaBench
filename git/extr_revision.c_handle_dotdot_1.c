
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int repo; int prefix; } ;
struct object_id {int dummy; } ;
struct object_context {int path; int mode; } ;
struct object {unsigned int flags; int oid; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;


 int BOTTOM ;
 unsigned int GET_OID_COMMITTISH ;
 unsigned int GET_OID_RECORD_PATH ;
 int REV_CMD_LEFT ;
 int REV_CMD_MERGE_BASE ;
 int REV_CMD_RIGHT ;
 int SYMMETRIC_LEFT ;
 int UNINTERESTING ;
 int add_pending_commit_list (struct rev_info*,struct commit_list*,unsigned int) ;
 int add_pending_object_with_path (struct rev_info*,struct object*,char const*,int ,int ) ;
 int add_rev_cmdline (struct rev_info*,struct object*,char const*,int ,unsigned int) ;
 int add_rev_cmdline_list (struct rev_info*,struct commit_list*,int ,unsigned int) ;
 int dotdot_missing (char const*,char*,struct rev_info*,int) ;
 int free_commit_list (struct commit_list*) ;
 struct commit_list* get_merge_bases (struct commit*,struct commit*) ;
 scalar_t__ get_oid_with_context (int ,char const*,unsigned int,struct object_id*,struct object_context*) ;
 struct commit* lookup_commit_reference (int ,int *) ;
 struct object* parse_object (int ,struct object_id*) ;
 int verify_non_filename (int ,char const*) ;

__attribute__((used)) static int handle_dotdot_1(const char *arg, char *dotdot,
      struct rev_info *revs, int flags,
      int cant_be_filename,
      struct object_context *a_oc,
      struct object_context *b_oc)
{
 const char *a_name, *b_name;
 struct object_id a_oid, b_oid;
 struct object *a_obj, *b_obj;
 unsigned int a_flags, b_flags;
 int symmetric = 0;
 unsigned int flags_exclude = flags ^ (UNINTERESTING | BOTTOM);
 unsigned int oc_flags = GET_OID_COMMITTISH | GET_OID_RECORD_PATH;

 a_name = arg;
 if (!*a_name)
  a_name = "HEAD";

 b_name = dotdot + 2;
 if (*b_name == '.') {
  symmetric = 1;
  b_name++;
 }
 if (!*b_name)
  b_name = "HEAD";

 if (get_oid_with_context(revs->repo, a_name, oc_flags, &a_oid, a_oc) ||
     get_oid_with_context(revs->repo, b_name, oc_flags, &b_oid, b_oc))
  return -1;

 if (!cant_be_filename) {
  *dotdot = '.';
  verify_non_filename(revs->prefix, arg);
  *dotdot = '\0';
 }

 a_obj = parse_object(revs->repo, &a_oid);
 b_obj = parse_object(revs->repo, &b_oid);
 if (!a_obj || !b_obj)
  return dotdot_missing(arg, dotdot, revs, symmetric);

 if (!symmetric) {

  b_flags = flags;
  a_flags = flags_exclude;
 } else {

  struct commit *a, *b;
  struct commit_list *exclude;

  a = lookup_commit_reference(revs->repo, &a_obj->oid);
  b = lookup_commit_reference(revs->repo, &b_obj->oid);
  if (!a || !b)
   return dotdot_missing(arg, dotdot, revs, symmetric);

  exclude = get_merge_bases(a, b);
  add_rev_cmdline_list(revs, exclude, REV_CMD_MERGE_BASE,
         flags_exclude);
  add_pending_commit_list(revs, exclude, flags_exclude);
  free_commit_list(exclude);

  b_flags = flags;
  a_flags = flags | SYMMETRIC_LEFT;
 }

 a_obj->flags |= a_flags;
 b_obj->flags |= b_flags;
 add_rev_cmdline(revs, a_obj, a_name, REV_CMD_LEFT, a_flags);
 add_rev_cmdline(revs, b_obj, b_name, REV_CMD_RIGHT, b_flags);
 add_pending_object_with_path(revs, a_obj, a_name, a_oc->mode, a_oc->path);
 add_pending_object_with_path(revs, b_obj, b_name, b_oc->mode, b_oc->path);
 return 0;
}
