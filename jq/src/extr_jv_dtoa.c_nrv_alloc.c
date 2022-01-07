
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtoa_context {int dummy; } ;


 char* rv_alloc (struct dtoa_context*,int) ;

__attribute__((used)) static char *
nrv_alloc(struct dtoa_context* C, const char *s, char **rve, int n)
{
 char *rv, *t;

 t = rv = rv_alloc(C, n);
 while((*t = *s++)) t++;
 if (rve)
  *rve = t;
 return rv;
 }
