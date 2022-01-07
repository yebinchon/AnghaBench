
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_REFERENCE_FORMAT_REFSPEC_PATTERN ;
 int ONE_LEVEL_AND_REFSPEC ;
 int ensure_refname_invalid (int ,char*) ;
 int ensure_refname_normalized (int ,char*,char*) ;

void test_refs_normalize__refspec_pattern(void)
{
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "heads/*foo/bar", "heads/*foo/bar");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "heads/foo*/bar", "heads/foo*/bar");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "heads/f*o/bar", "heads/f*o/bar");

 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "foo");
 ensure_refname_normalized(
  ONE_LEVEL_AND_REFSPEC, "FOO", "FOO");

 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "foo/bar", "foo/bar");
 ensure_refname_normalized(
  ONE_LEVEL_AND_REFSPEC, "foo/bar", "foo/bar");

 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "*/foo", "*/foo");
 ensure_refname_normalized(
  ONE_LEVEL_AND_REFSPEC, "*/foo", "*/foo");

 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "foo/*/bar", "foo/*/bar");
 ensure_refname_normalized(
  ONE_LEVEL_AND_REFSPEC, "foo/*/bar", "foo/*/bar");

 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "*");
 ensure_refname_normalized(
  ONE_LEVEL_AND_REFSPEC, "*", "*");

 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "foo/*/*");
 ensure_refname_invalid(
  ONE_LEVEL_AND_REFSPEC, "foo/*/*");

 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "*/foo/*");
 ensure_refname_invalid(
  ONE_LEVEL_AND_REFSPEC, "*/foo/*");

 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, "*/*/foo");
 ensure_refname_invalid(
  ONE_LEVEL_AND_REFSPEC, "*/*/foo");
}
