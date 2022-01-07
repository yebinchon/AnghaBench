
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int news_conn ;
 int send_to (int ,char*,int,int ) ;

int send_to_news (char *query, int query_len) {


  return send_to (news_conn, query, query_len, 0);
}
