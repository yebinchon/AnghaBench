
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eat_at (char const*,int) ;
 int fprintf (int ,char*,char const*) ;
 int mct_get ;
 int stderr ;
 int strncmp (char const*,char*,int) ;
 int verbosity ;

int hints_merge_check_query (int type, const char *key, int key_len) {
  if (type != mct_get) {
    return 0;
  }

  if (verbosity > 2) {
    fprintf (stderr, "hints_merge_check_query (key = %s)\n", key);
  }

  int l = eat_at (key, key_len);
  key += l;
  key_len -= l;

  return (key_len > 12 && !strncmp (key, "gather_hints", 12));
}
