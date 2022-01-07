
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum eol { ____Placeholder_eol } eol ;
typedef enum crlf_action { ____Placeholder_crlf_action } crlf_action ;
 int EOL_CRLF ;
 int EOL_LF ;
 int EOL_UNSET ;
 int _ (char*) ;
 int core_eol ;
 int text_eol_is_crlf () ;
 int warning (int ,int) ;

__attribute__((used)) static enum eol output_eol(enum crlf_action crlf_action)
{
 switch (crlf_action) {
 case 132:
  return EOL_UNSET;
 case 130:
  return EOL_CRLF;
 case 129:
  return EOL_LF;
 case 128:
 case 134:
  return EOL_CRLF;
 case 133:
  return EOL_LF;
 case 131:
 case 135:

  return text_eol_is_crlf() ? EOL_CRLF : EOL_LF;
 }
 warning(_("illegal crlf_action %d"), (int)crlf_action);
 return core_eol;
}
