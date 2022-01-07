
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kstring_t ;


 int kputsn (char const*,int ,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static inline int kputs(const char *p, kstring_t *s)
{
 return kputsn(p, strlen(p), s);
}
