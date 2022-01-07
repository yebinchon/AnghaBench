
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL ;
 int GIT_REFERENCE_FORMAT_NORMAL ;
 int GIT_REFNAME_MAX ;
 int ensure_refname_invalid (int ,char*) ;
 int ensure_refname_normalized (int ,char*,char*) ;
 int p_snprintf (char*,int,char*,char) ;

void test_refs_normalize__jgit_suite(void)
{



 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "/");


 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_NORMAL, "master");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_NORMAL, "heads/master", "heads/master");


 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master", "refs/heads/master");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/pu", "refs/heads/pu");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/z", "refs/heads/z");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/FoO", "refs/heads/FoO");


 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/tags/v1.0", "refs/tags/v1.0");


 ensure_refname_invalid(GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master.lock");


 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master/");


 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/i haz space");


 {
  char c;
  char buffer[GIT_REFNAME_MAX];
  for (c = '\1'; c < ' '; c++) {
   p_snprintf(buffer, sizeof(buffer), "refs/heads/mast%cer", c);
   ensure_refname_invalid(GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, buffer);
  }
 }


 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/.");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/..");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/./master");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/../master");


 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, ".");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/.bar");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/..bar");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/bar.");


 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/m.a.s.t.e.r", "refs/heads/m.a.s.t.e.r");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master..pu");


 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master^");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/^master");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "^refs/heads/master");

 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master~");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/~master");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "~refs/heads/master");

 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master:");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/:master");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, ":refs/heads/master");


 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master?");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/?master");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "?refs/heads/master");

 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master[");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/[master");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "[refs/heads/master");

 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master*");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/*master");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "*refs/heads/master");


 ensure_refname_normalized
  (GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/!", "refs/heads/!");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/\"", "refs/heads/\"");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/#", "refs/heads/#");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/$", "refs/heads/$");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/%", "refs/heads/%");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/&", "refs/heads/&");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/'", "refs/heads/'");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/(", "refs/heads/(");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/)", "refs/heads/)");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/+", "refs/heads/+");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/,", "refs/heads/,");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/-", "refs/heads/-");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/;", "refs/heads/;");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/<", "refs/heads/<");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/=", "refs/heads/=");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/>", "refs/heads/>");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/@", "refs/heads/@");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/]", "refs/heads/]");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/_", "refs/heads/_");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/`", "refs/heads/`");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/{", "refs/heads/{");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/|", "refs/heads/|");
 ensure_refname_normalized(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/}", "refs/heads/}");





 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/\\");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master@{1}");
 ensure_refname_invalid(
  GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, "refs/heads/master@{1.hour.ago}");
}
