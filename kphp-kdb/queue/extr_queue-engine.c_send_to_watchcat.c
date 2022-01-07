
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int send_to (int ,char*,int,int) ;
 int watchcat_conn ;

int send_to_watchcat (char *query, int query_len) {
  return send_to (watchcat_conn, query, query_len, 1);
}
