
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_query_header {int ref_cnt; } ;



struct tl_query_header *tl_query_header_dup (struct tl_query_header *h) {
  h->ref_cnt ++;
  return h;
}
