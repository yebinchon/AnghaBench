
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int black_list ;
 int fprintf (int ,char*,...) ;
 int prepare_str (char*,int) ;
 int stderr ;
 int strlen (char*) ;
 int trie_add (int *,int ) ;
 int trie_del (int ,int ) ;
 int verbosity ;

void black_list_set_string (char *buff, int f) {
  if (verbosity > 2) {
    fprintf (stderr, "set %d string <%s>\n", f, buff);
  }
  int size = strlen (buff);
  char *s = buff;
  int i;
  char t;
  for (i = 0; i <= size; i++) {
    if (buff[i] == '\t' || buff[i] == 0) {
      t = buff[i];
      buff[i] = 0;
      if (*s) {
        if (f) {
          trie_del (black_list, prepare_str (s, 1));
        } else {
          trie_add (&black_list, prepare_str (s, 1));
        }
      }
      if (verbosity > 2) {
        fprintf (stderr, " -- <%s>\n", s);
      }
      s = buff + i + 1;
      buff[i] = t;
    }
  }
}
