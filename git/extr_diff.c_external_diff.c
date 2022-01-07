
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* external_diff_cmd_cfg ;
 int getenv (char*) ;
 char* xstrdup_or_null (int ) ;

__attribute__((used)) static const char *external_diff(void)
{
 static const char *external_diff_cmd = ((void*)0);
 static int done_preparing = 0;

 if (done_preparing)
  return external_diff_cmd;
 external_diff_cmd = xstrdup_or_null(getenv("GIT_EXTERNAL_DIFF"));
 if (!external_diff_cmd)
  external_diff_cmd = external_diff_cmd_cfg;
 done_preparing = 1;
 return external_diff_cmd;
}
