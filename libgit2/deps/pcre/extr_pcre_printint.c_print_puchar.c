
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcre_uint32 ;
typedef char* PCRE_PUCHAR ;
typedef int FILE ;


 scalar_t__ PRINTABLE (int) ;
 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
print_puchar(FILE *f, PCRE_PUCHAR ptr)
{
while (*ptr != '\0')
  {
  register pcre_uint32 c = *ptr++;
  if (PRINTABLE(c)) fprintf(f, "%c", c); else fprintf(f, "\\x{%x}", c);
  }
}
