
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_query_header {scalar_t__ ref_cnt; int string_forward_keys_num; scalar_t__* string_forward_keys; scalar_t__ string_forward; } ;


 int assert (int) ;
 int free (scalar_t__) ;
 int zfree (struct tl_query_header*,int) ;

void tl_query_header_delete (struct tl_query_header *h) {
  h->ref_cnt --;
  assert (h->ref_cnt >= 0);
  if (h->ref_cnt) { return; }
  if (h->string_forward) {
    free (h->string_forward);
  }
  int i;
  for (i = 0; i < h->string_forward_keys_num; i++) if (h->string_forward_keys[i]) {
    free (h->string_forward_keys[i]);
  }
  zfree (h, sizeof (*h));
}
