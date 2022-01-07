
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ll ;


 int IS_UID (int ) ;
 int get_news_s (int ) ;
 int get_queue_alias (int ,int *) ;

int get_queue_news_alias (ll id, ll *res) {
  if (!IS_UID(id)) {
    return 0;
  }

  return get_queue_alias (get_news_s (id), res);
}
