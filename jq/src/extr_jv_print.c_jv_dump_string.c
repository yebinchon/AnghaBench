
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int jv_dump_term (int ,int ,int,int ,int ,int *) ;
 int jv_string (char*) ;
 int tsd_dtoa_context_get () ;

jv jv_dump_string(jv x, int flags) {
  jv s = jv_string("");
  jv_dump_term(tsd_dtoa_context_get(), x, flags, 0, 0, &s);
  return s;
}
