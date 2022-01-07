
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;


 unsigned long long COOKIE_PGSZ_CODE ;
 unsigned long long COOKIE_PGSZ_CODE_SHIFT ;

__attribute__((used)) static unsigned long ldc_cookie_to_index(u64 cookie, void *arg)
{
 u64 szcode = cookie >> COOKIE_PGSZ_CODE_SHIFT;


 cookie &= ~COOKIE_PGSZ_CODE;

 return (cookie >> (13ULL + (szcode * 3ULL)));
}
