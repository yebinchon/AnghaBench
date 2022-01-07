
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_debug_bptype ;


 int BREAK_ERR_MSG_BLANK ;
 char* BREAK_ERR_MSG_INVALIDSTR ;
 int BREAK_ERR_MSG_RANGEOVER ;
 scalar_t__ ISBLANK (char) ;
 scalar_t__ ISCNTRL (char) ;
 int ISDIGIT (char) ;
 scalar_t__ LINENO_MAX_DIGIT ;
 int MRB_DEBUG_BPTYPE_LINE ;
 int MRB_DEBUG_BPTYPE_METHOD ;
 int MRB_DEBUG_BPTYPE_NONE ;
 int printf (char*,char*) ;
 int puts (int ) ;
 scalar_t__ strlen (char*) ;

mrb_debug_bptype
check_bptype(char* args)
{
  char* ps = args;

  if (ISBLANK(*ps)||ISCNTRL(*ps)) {
    puts(BREAK_ERR_MSG_BLANK);
    return MRB_DEBUG_BPTYPE_NONE;
  }

  if (!ISDIGIT(*ps)) {
    return MRB_DEBUG_BPTYPE_METHOD;
  }

  while (!(ISBLANK(*ps)||ISCNTRL(*ps))) {
    if (!ISDIGIT(*ps)) {
      printf(BREAK_ERR_MSG_INVALIDSTR, args);
      return MRB_DEBUG_BPTYPE_NONE;
    }
    ps++;
  }

  if ((*args == '0')||(strlen(args) >= LINENO_MAX_DIGIT)) {
    puts(BREAK_ERR_MSG_RANGEOVER);
    return MRB_DEBUG_BPTYPE_NONE;
  }

  return MRB_DEBUG_BPTYPE_LINE;
}
