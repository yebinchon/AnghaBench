
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_REFERENCE_FORMAT_NORMAL ;
 int ensure_refname_normalized (int ,char*,char*) ;

void test_refs_normalize__can_normalize_a_direct_reference_name(void)
{
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/dummy/a", "refs/dummy/a");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/stash", "refs/stash");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/tags/a", "refs/tags/a");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/a/b", "refs/heads/a/b");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/a./b", "refs/heads/a./b");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/v@ation", "refs/heads/v@ation");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_NORMAL, "refs///heads///a", "refs/heads/a");
}
