
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ll ;


 scalar_t__ Q_NEWS ;
 scalar_t__ get_qtype (char*) ;
 int sscanf (char*,char*,int *) ;

ll get_news_s_id (char *s) {
  ll id = 0;
  if (get_qtype (s) == Q_NEWS) {
    sscanf (s + 2 + (s[2] == '_'), "%lld", &id);
    if (s[2] == '_') {
      id = -id;
    }
  }
  return id;
}
