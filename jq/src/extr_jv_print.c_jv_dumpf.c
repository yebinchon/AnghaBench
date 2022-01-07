
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int FILE ;


 int jv_dump_term (int ,int ,int,int ,int *,int ) ;
 int tsd_dtoa_context_get () ;

void jv_dumpf(jv x, FILE *f, int flags) {
  jv_dump_term(tsd_dtoa_context_get(), x, flags, 0, f, 0);
}
