
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ flags; int uahash; int ip; int id; } ;
typedef TYPE_1__ antispam_pattern_t ;


 int FALSE ;
 int MAX_DISPLAYED_LEN ;
 int TRUE ;
 scalar_t__ antispam_add (TYPE_1__,char*,int) ;
 int assert (int) ;
 int st_printf (char*,char*,char*,int ,int ,int ,unsigned int,int,char*,char*,int) ;
 int verbosity ;

__attribute__((used)) static inline bool add_pattern (antispam_pattern_t p, int str_len, char* str, bool replace, char *version) {
  assert (str[str_len] == 0);
  if (antispam_add (p, str, replace)) {
    if (verbosity >= 3) {
      st_printf ("$2%s pattern_%s[%10d]$3 %10u,%10u,%5u,$1|$3%.*s%s$1| = %d$^\n",
        (replace ? "set" : "add"), version, p.id, p.ip, p.uahash, (unsigned)p.flags,
        (str_len <= MAX_DISPLAYED_LEN ? str_len : MAX_DISPLAYED_LEN - 3),
        str, (str_len <= MAX_DISPLAYED_LEN ? "" : "..."), str_len);
    }
    return TRUE;
  }
  if (verbosity >= 3) {
    st_printf ("$5%s pattern_%s[%10d] %10u,%10u,%5u,|%.*s%s| = %d (rejected: possibly wrong id)$^\n",
      (replace ? "set" : "add"), version, p.id, p.ip, p.uahash, (unsigned)p.flags,
      (str_len <= MAX_DISPLAYED_LEN ? str_len : MAX_DISPLAYED_LEN - 3),
      str, (str_len <= MAX_DISPLAYED_LEN ? "" : "..."), str_len);
  }
  return FALSE;
}
