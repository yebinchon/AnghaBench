
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_CYRILIC_SYMBOL ;
 int ERR_UNKNOWN_RESERVED_WORD ;
 char const** RESERVED_WORDS_H ;
 int RESERVED_WORDS_HASHTABLE_SIZE ;
 scalar_t__ islower (char) ;
 int reserved_words ;
 int strcasecmp (char const*,char const*) ;
 char toupper (char) ;
 int unperfect_hash ;

__attribute__((used)) static int get_cmd_f (const char* cmd, int force) {
  unsigned hc = 0;
  const char *p = cmd;
  while (*p) {
    char c = *p++;
    if (c < 0) {
      return ERR_CYRILIC_SYMBOL;
    }
    if (islower (c)) {
      c = toupper (c);
    }
    hc *= 131;
    hc += c;
  }

  unsigned i = hc &= RESERVED_WORDS_HASHTABLE_SIZE - 1;
  while (RESERVED_WORDS_H[i]) {
    if (!strcasecmp (cmd, RESERVED_WORDS_H[i])) {
      return i;
    }
    if (++i == RESERVED_WORDS_HASHTABLE_SIZE) {
      i = 0;
    }
  }

  if (force) {
    RESERVED_WORDS_H[i] = cmd;
    reserved_words++;
    if (i != hc) {
      unperfect_hash++;
    }
    return i;
  } else {
    return ERR_UNKNOWN_RESERVED_WORD;
  }
}
