
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crlf_attrs {scalar_t__ auto_crlf; scalar_t__ safe_crlf; scalar_t__ core_eol; scalar_t__ crlf_action; scalar_t__ attr_action; } ;
typedef int git_filter_source ;


 scalar_t__ GIT_AUTO_CRLF_FALSE ;
 scalar_t__ GIT_AUTO_CRLF_INPUT ;
 scalar_t__ GIT_AUTO_CRLF_TRUE ;
 int GIT_CONFIGMAP_AUTO_CRLF ;
 int GIT_CONFIGMAP_EOL ;
 int GIT_CONFIGMAP_SAFE_CRLF ;
 scalar_t__ GIT_CRLF_AUTO ;
 void* GIT_CRLF_AUTO_CRLF ;
 void* GIT_CRLF_AUTO_INPUT ;
 scalar_t__ GIT_CRLF_BINARY ;
 scalar_t__ GIT_CRLF_TEXT ;
 void* GIT_CRLF_TEXT_CRLF ;
 void* GIT_CRLF_TEXT_INPUT ;
 scalar_t__ GIT_CRLF_UNDEFINED ;
 int GIT_EOL_CRLF ;
 int GIT_EOL_LF ;
 int GIT_FILTER_ALLOW_UNSAFE ;
 scalar_t__ GIT_SAFE_CRLF_FAIL ;
 scalar_t__ GIT_SAFE_CRLF_WARN ;
 void* check_crlf (char const*) ;
 int check_eol (char const*) ;
 int git_filter_source_flags (int const*) ;
 int git_filter_source_repo (int const*) ;
 int git_repository__configmap_lookup (scalar_t__*,int ,int ) ;
 int memset (struct crlf_attrs*,int ,int) ;
 scalar_t__ text_eol_is_crlf (struct crlf_attrs*) ;

__attribute__((used)) static int convert_attrs(
 struct crlf_attrs *ca,
 const char **attr_values,
 const git_filter_source *src)
{
 int error;

 memset(ca, 0, sizeof(struct crlf_attrs));

 if ((error = git_repository__configmap_lookup(&ca->auto_crlf,
   git_filter_source_repo(src), GIT_CONFIGMAP_AUTO_CRLF)) < 0 ||
  (error = git_repository__configmap_lookup(&ca->safe_crlf,
   git_filter_source_repo(src), GIT_CONFIGMAP_SAFE_CRLF)) < 0 ||
  (error = git_repository__configmap_lookup(&ca->core_eol,
   git_filter_source_repo(src), GIT_CONFIGMAP_EOL)) < 0)
  return error;


 if ((git_filter_source_flags(src) & GIT_FILTER_ALLOW_UNSAFE) &&
  ca->safe_crlf == GIT_SAFE_CRLF_FAIL)
  ca->safe_crlf = GIT_SAFE_CRLF_WARN;

 if (attr_values) {

  ca->crlf_action = check_crlf(attr_values[2]);

  if (ca->crlf_action == GIT_CRLF_UNDEFINED)
   ca->crlf_action = check_crlf(attr_values[0]);

  if (ca->crlf_action != GIT_CRLF_BINARY) {

   int eol_attr = check_eol(attr_values[1]);

   if (ca->crlf_action == GIT_CRLF_AUTO && eol_attr == GIT_EOL_LF)
    ca->crlf_action = GIT_CRLF_AUTO_INPUT;
   else if (ca->crlf_action == GIT_CRLF_AUTO && eol_attr == GIT_EOL_CRLF)
    ca->crlf_action = GIT_CRLF_AUTO_CRLF;
   else if (eol_attr == GIT_EOL_LF)
    ca->crlf_action = GIT_CRLF_TEXT_INPUT;
   else if (eol_attr == GIT_EOL_CRLF)
    ca->crlf_action = GIT_CRLF_TEXT_CRLF;
  }

  ca->attr_action = ca->crlf_action;
 } else {
  ca->crlf_action = GIT_CRLF_UNDEFINED;
 }

 if (ca->crlf_action == GIT_CRLF_TEXT)
  ca->crlf_action = text_eol_is_crlf(ca) ? GIT_CRLF_TEXT_CRLF : GIT_CRLF_TEXT_INPUT;
 if (ca->crlf_action == GIT_CRLF_UNDEFINED && ca->auto_crlf == GIT_AUTO_CRLF_FALSE)
  ca->crlf_action = GIT_CRLF_BINARY;
 if (ca->crlf_action == GIT_CRLF_UNDEFINED && ca->auto_crlf == GIT_AUTO_CRLF_TRUE)
  ca->crlf_action = GIT_CRLF_AUTO_CRLF;
 if (ca->crlf_action == GIT_CRLF_UNDEFINED && ca->auto_crlf == GIT_AUTO_CRLF_INPUT)
  ca->crlf_action = GIT_CRLF_AUTO_INPUT;

 return 0;
}
