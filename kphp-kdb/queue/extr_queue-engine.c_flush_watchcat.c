
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_conn (int ) ;
 int watchcat_conn ;

void flush_watchcat (void) {
  flush_conn (watchcat_conn);
}
