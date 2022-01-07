
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ferr_write (char const*,int ,int *,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static inline void ferr_puts(const char *s, FILE *fp, int *err)
{
 ferr_write(s, strlen(s), fp, err);
}
