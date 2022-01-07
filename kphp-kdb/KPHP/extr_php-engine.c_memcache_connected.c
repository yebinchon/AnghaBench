
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int * Tmp; int Out; } ;


 int copy_through (int *,int *,int) ;
 int get_total_ready_bytes (int *) ;

int memcache_connected (struct connection *c) {
  if (c->Tmp != ((void*)0)) {
    int query_len = get_total_ready_bytes (c->Tmp);
    copy_through (&c->Out, c->Tmp, query_len);
  }

  return 0;
}
