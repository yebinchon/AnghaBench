
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct newsr_gather_extra {int dummy; } ;


 int zzfree (void*,int) ;

int newsr_free_gather_extra (void *E) {
  zzfree (E, sizeof (struct newsr_gather_extra));
  return 0;
}
