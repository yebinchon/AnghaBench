
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ll ;


 int sprintf (char*,char*,int ) ;

char *get_news_s (ll id) {
  static char buf[100];
  sprintf (buf, "n_%lld", id);
  if (buf[2] == '-') {
    buf[2] = '_';
  }
  return buf;
}
