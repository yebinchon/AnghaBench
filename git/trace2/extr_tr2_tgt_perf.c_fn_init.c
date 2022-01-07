
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TR2_DOTS_BUFFER_SIZE ;
 int TR2_SYSENV_PERF_BRIEF ;
 int dots ;
 int git_parse_maybe_bool (char const*) ;
 int strbuf_addchars (int *,char,int ) ;
 int tr2_dst_trace_want (int *) ;
 char* tr2_sysenv_get (int ) ;
 int tr2dst_perf ;
 int tr2env_perf_be_brief ;

__attribute__((used)) static int fn_init(void)
{
 int want = tr2_dst_trace_want(&tr2dst_perf);
 int want_brief;
 const char *brief;

 if (!want)
  return want;

 strbuf_addchars(&dots, '.', TR2_DOTS_BUFFER_SIZE);

 brief = tr2_sysenv_get(TR2_SYSENV_PERF_BRIEF);
 if (brief && *brief &&
     ((want_brief = git_parse_maybe_bool(brief)) != -1))
  tr2env_perf_be_brief = want_brief;

 return want;
}
