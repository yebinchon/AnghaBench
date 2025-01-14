
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TR2_SYSENV_EVENT_BRIEF ;
 int TR2_SYSENV_EVENT_NESTING ;
 int atoi (char const*) ;
 int git_parse_maybe_bool (char const*) ;
 int tr2_dst_trace_want (int *) ;
 char* tr2_sysenv_get (int ) ;
 int tr2dst_event ;
 int tr2env_event_be_brief ;
 int tr2env_event_max_nesting_levels ;

__attribute__((used)) static int fn_init(void)
{
 int want = tr2_dst_trace_want(&tr2dst_event);
 int max_nesting;
 int want_brief;
 const char *nesting;
 const char *brief;

 if (!want)
  return want;

 nesting = tr2_sysenv_get(TR2_SYSENV_EVENT_NESTING);
 if (nesting && *nesting && ((max_nesting = atoi(nesting)) > 0))
  tr2env_event_max_nesting_levels = max_nesting;

 brief = tr2_sysenv_get(TR2_SYSENV_EVENT_BRIEF);
 if (brief && *brief &&
     ((want_brief = git_parse_maybe_bool(brief)) != -1))
  tr2env_event_be_brief = want_brief;

 return want;
}
