
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_conn (int ) ;
 int news_conn ;

void flush_news (void) {
  flush_conn (news_conn);
}
