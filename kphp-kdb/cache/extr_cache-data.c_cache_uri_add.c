
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_cache_uri {int data; } ;


 int get_uri_f (char*,int) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static void cache_uri_add (struct lev_cache_uri *E, int l) {
  char uri[256];
  memcpy (uri, E->data, l);
  uri[l] = 0;
  get_uri_f (uri, 1);
}
