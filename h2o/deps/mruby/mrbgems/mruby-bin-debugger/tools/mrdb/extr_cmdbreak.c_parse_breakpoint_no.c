
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 scalar_t__ BPNO_LETTER_NUM ;
 scalar_t__ ISBLANK (char) ;
 scalar_t__ ISCNTRL (char) ;
 int ISDIGIT (char) ;
 int STRTOUL (int ,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int32_t
parse_breakpoint_no(char* args)
{
  char* ps = args;
  uint32_t l;

  if ((*ps == '0')||(strlen(ps) >= BPNO_LETTER_NUM)) {
    return 0;
  }

  while (!(ISBLANK(*ps)||ISCNTRL(*ps))) {
    if (!ISDIGIT(*ps)) {
      return 0;
    }
    ps++;
  }

  STRTOUL(l, args);
  return l;
}
