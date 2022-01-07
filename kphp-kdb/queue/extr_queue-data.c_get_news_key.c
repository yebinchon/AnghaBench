
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ll ;


 int IS_UID (int) ;
 int Q_NEWS ;
 int fprintf (int ,char*,char*) ;
 char* get_news_s (int ) ;
 char* get_timestamp_key (char*,int,int,int,int *,int ) ;
 int my_verbosity ;
 int stderr ;

char *get_news_key (int id, int ip, int timeout, ll uid) {
  if (!IS_UID (id)) {
    return "{\"failed\":\"4\"}";
  }

  char *sid = get_news_s (uid);
  if (my_verbosity > 1) {
    fprintf (stderr, "name = %s\n", sid);
  }

  return get_timestamp_key (sid, id, ip, timeout, ((void*)0), Q_NEWS);
}
