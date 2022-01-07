
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eat_at (char const*,int) ;
 int fprintf (int ,char*,int,char const*,int) ;
 int mct_add ;
 int mct_get ;
 int mct_replace ;
 int mct_set ;
 int stderr ;
 int strncmp (char const*,char*,int) ;
 scalar_t__ verbosity ;

int newsr_check_query (int type, const char *key, int key_len) {
  if (verbosity) {
    fprintf (stderr, "newsr_check: type = %d, key = %s, key_len = %d\n", type, key, key_len);
  }
  int l = eat_at (key, key_len);
  key += l;
  key_len -= l;
  if (type == mct_get) {
    return (key_len >= 22 && (!strncmp (key, "raw_recommend_updates", 21) || !strncmp (key, "%raw_recommend_updates", 22))) ||
           (key_len >= 8 && (!strncmp (key, "recommend_updates", 17) || !strncmp (key, "%recommend_updates", 18)));
  } else if (type == mct_set || type == mct_replace || type == mct_add) {
    return (key_len >= 6 && !strncmp (key, "urlist", 6));
  } else {
    return 1;
  }
}
