
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_saved_query {scalar_t__ extra; } ;
struct saved_data_auto {int dummy; } ;


 int zfree (scalar_t__,int) ;

__attribute__((used)) static inline void tl_saved_query_free_auto (struct tl_saved_query *q) {
  if (*(int *)(q->extra) > 0) { return; };
  zfree (q->extra, sizeof (struct saved_data_auto));
}
