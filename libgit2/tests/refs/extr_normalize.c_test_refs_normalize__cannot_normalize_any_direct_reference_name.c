
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_REFERENCE_FORMAT_NORMAL ;
 int ensure_refname_invalid (int ,char*) ;
 int ensure_refname_normalized (int ,char*,char*) ;

void test_refs_normalize__cannot_normalize_any_direct_reference_name(void)
{
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "a");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "/a");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "//a");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "/refs/heads/a/");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/a/");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/a.");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/a.lock");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/foo?bar");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/heads\foo");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/v@ation", "refs/heads/v@ation");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_NORMAL, "refs///heads///a", "refs/heads/a");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/.a/b");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/foo/../bar");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/foo..bar");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/./foo");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "refs/heads/v@{ation");
}
