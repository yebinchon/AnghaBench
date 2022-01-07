
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct news_gather_extra {int user_mode; } ;



int news_use_preget_query (void *extra) {
  return !((struct news_gather_extra *)extra)->user_mode;
}
