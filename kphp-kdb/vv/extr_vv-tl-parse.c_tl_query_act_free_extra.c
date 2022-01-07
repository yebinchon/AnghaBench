
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_saved_query {scalar_t__ extra; } ;
struct tl_act_extra {int (* free ) (scalar_t__) ;} ;


 int stub1 (scalar_t__) ;

void tl_query_act_free_extra (struct tl_saved_query *q) {
  ((struct tl_act_extra *)(q->extra))->free (q->extra);
}
