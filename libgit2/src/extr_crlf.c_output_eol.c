
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crlf_attrs {int crlf_action; int core_eol; } ;
typedef int git_configmap_value ;
 int GIT_EOL_CRLF ;
 int GIT_EOL_LF ;
 int GIT_EOL_UNSET ;
 int text_eol_is_crlf (struct crlf_attrs*) ;

__attribute__((used)) static git_configmap_value output_eol(struct crlf_attrs *ca)
{
 switch (ca->crlf_action) {
 case 132:
  return GIT_EOL_UNSET;
 case 130:
  return GIT_EOL_CRLF;
 case 129:
  return GIT_EOL_LF;
 case 128:
 case 134:
  return GIT_EOL_CRLF;
 case 133:
  return GIT_EOL_LF;
 case 131:
 case 135:
  return text_eol_is_crlf(ca) ? GIT_EOL_CRLF : GIT_EOL_LF;
 }


 return ca->core_eol;
}
