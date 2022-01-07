
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_act_extra {int flags; int size; int header; } ;


 int free (struct tl_act_extra*) ;
 int tl_query_header_delete (int ) ;
 int zfree (struct tl_act_extra*,int ) ;

void tl_default_act_free (struct tl_act_extra *extra) {
  tl_query_header_delete (extra->header);
  if (!(extra->flags & 1)) {
    return;
  }
  if (extra->flags & 2) {
    free (extra);
  } else {
    zfree (extra, extra->size);
  }
}
