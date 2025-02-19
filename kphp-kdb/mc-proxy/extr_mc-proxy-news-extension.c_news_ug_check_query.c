
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

int news_ug_check_query (int type, const char *key, int key_len) {
  if (verbosity) {
    fprintf (stderr, "news_ug_check: type = %d, key = %s, key_len = %d\n", type, key, key_len);
  }
  int l = eat_at (key, key_len);
  key += l;
  key_len -= l;
  if (type == mct_get) {
    return (key_len >= 12 && (!strncmp (key, "raw_updates", 11) || !strncmp (key, "%raw_updates", 12))) ||
           (key_len >= 8 && (!strncmp (key, "updates", 7) || !strncmp (key, "%updates", 8)));
  } else if (type == mct_set || type == mct_replace || type == mct_add) {
    return (key_len >= 8 && !strncmp (key, "userlist", 8));
  } else {
    return 1;
  }
}
