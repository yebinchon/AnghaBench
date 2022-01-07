
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtoa_context {int dummy; } ;
typedef int jv ;
typedef int FILE ;


 int JVP_DTOA_FMT_MAX_LEN ;
 int jvp_dtoa_fmt (struct dtoa_context*,char*,int) ;
 int put_char (char,int *,int *,int) ;
 int put_str (int ,int *,int *,int) ;

__attribute__((used)) static void put_refcnt(struct dtoa_context* C, int refcnt, FILE *F, jv* S, int T){
  char buf[JVP_DTOA_FMT_MAX_LEN];
  put_char(' ', F, S, T);
  put_char('(', F, S, T);
  put_str(jvp_dtoa_fmt(C, buf, refcnt), F, S, T);
  put_char(')', F, S, T);
}
