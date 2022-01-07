
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL ;
 int ensure_refname_invalid (int ,char*) ;
 int ensure_refname_normalized (int ,char*,char*) ;

void test_refs_normalize__symbolic(void)
{
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "heads\foo");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "/");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "///");

 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "ALL_CAPS_AND_UNDERSCORES", "ALL_CAPS_AND_UNDERSCORES");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/MixedCasing", "refs/MixedCasing");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs///heads///a", "refs/heads/a");

 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "HEAD", "HEAD");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "MERGE_HEAD", "MERGE_HEAD");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "FETCH_HEAD", "FETCH_HEAD");
}
