
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double CLOCKS_PER_SEC ;
 scalar_t__ clock () ;
 double precise_now ;

void update_now() {
  precise_now = (double)clock() / CLOCKS_PER_SEC;
}
