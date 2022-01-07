
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int BUG (char*,char const*,...) ;
 int OBJ_BLOB ;
 int OBJ_COMMIT ;
 int OBJ_TAG ;
 int OBJ_TREE ;
 int _ (char*) ;
 int advice_push_unqualified_ref_name ;
 int advise (int ,char const*,char const*) ;
 int error (int ,char const*,char const*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int oid_object_info (int ,struct object_id*,int *) ;
 int the_repository ;

__attribute__((used)) static void show_push_unqualified_ref_name_error(const char *dst_value,
       const char *matched_src_name)
{
 struct object_id oid;
 enum object_type type;






 error(_("The destination you provided is not a full refname (i.e.,\n"
  "starting with \"refs/\"). We tried to guess what you meant by:\n"
  "\n"
  "- Looking for a ref that matches '%s' on the remote side.\n"
  "- Checking if the <src> being pushed ('%s')\n"
  "  is a ref in \"refs/{heads,tags}/\". If so we add a corresponding\n"
  "  refs/{heads,tags}/ prefix on the remote side.\n"
  "\n"
  "Neither worked, so we gave up. You must fully qualify the ref."),
       dst_value, matched_src_name);

 if (!advice_push_unqualified_ref_name)
  return;

 if (get_oid(matched_src_name, &oid))
  BUG("'%s' is not a valid object, "
      "match_explicit_lhs() should catch this!",
      matched_src_name);
 type = oid_object_info(the_repository, &oid, ((void*)0));
 if (type == OBJ_COMMIT) {
  advise(_("The <src> part of the refspec is a commit object.\n"
    "Did you mean to create a new branch by pushing to\n"
    "'%s:refs/heads/%s'?"),
         matched_src_name, dst_value);
 } else if (type == OBJ_TAG) {
  advise(_("The <src> part of the refspec is a tag object.\n"
    "Did you mean to create a new tag by pushing to\n"
    "'%s:refs/tags/%s'?"),
         matched_src_name, dst_value);
 } else if (type == OBJ_TREE) {
  advise(_("The <src> part of the refspec is a tree object.\n"
    "Did you mean to tag a new tree by pushing to\n"
    "'%s:refs/tags/%s'?"),
         matched_src_name, dst_value);
 } else if (type == OBJ_BLOB) {
  advise(_("The <src> part of the refspec is a blob object.\n"
    "Did you mean to tag a new blob by pushing to\n"
    "'%s:refs/tags/%s'?"),
         matched_src_name, dst_value);
 } else {
  BUG("'%s' should be commit/tag/tree/blob, is '%d'",
      matched_src_name, type);
 }
}
