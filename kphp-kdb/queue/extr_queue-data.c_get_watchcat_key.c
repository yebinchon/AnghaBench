
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_WATCHCAT ;
 int fprintf (int ,char*,char*) ;
 char* get_timestamp_key (char*,int,int,int,char*,int ) ;
 char* get_watchcat_s (long long) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int my_verbosity ;
 int stderr ;
 int update_watchcat (long long,int,char*) ;
 long long watchcat_query_hash (char*) ;

char *get_watchcat_key (char *qname, int id, int ip, int timeout) {
  long long hid = watchcat_query_hash (qname);
  if (hid == -1) {
    return ((void*)0);
  }

  char *sid = get_watchcat_s (hid);
  if (my_verbosity > 1) {
    fprintf (stderr, "name = %s\n", sid);
  }

  char *res = get_timestamp_key (sid, id, ip, timeout, qname, Q_WATCHCAT);

  if (memcmp (res + 2, "failed", 6)) {
    update_watchcat (hid, timeout, qname);
  }

  return res;
}
