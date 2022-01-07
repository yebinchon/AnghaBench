
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TR2_SYSENV_NORMAL_BRIEF ;
 int git_parse_maybe_bool (char const*) ;
 int tr2_dst_trace_want (int *) ;
 char* tr2_sysenv_get (int ) ;
 int tr2dst_normal ;
 int tr2env_normal_be_brief ;

__attribute__((used)) static int fn_init(void)
{
 int want = tr2_dst_trace_want(&tr2dst_normal);
 int want_brief;
 const char *brief;

 if (!want)
  return want;

 brief = tr2_sysenv_get(TR2_SYSENV_NORMAL_BRIEF);
 if (brief && *brief &&
     ((want_brief = git_parse_maybe_bool(brief)) != -1))
  tr2env_normal_be_brief = want_brief;

 return want;
}
