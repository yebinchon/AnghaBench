
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advert {char* query; } ;


 struct advert* get_ad_f (int,int ) ;

char *get_ad_query (int ad_id) {
  struct advert *A = get_ad_f (ad_id, 0);
  if (!A) { return 0; }
  return A->query;
}
