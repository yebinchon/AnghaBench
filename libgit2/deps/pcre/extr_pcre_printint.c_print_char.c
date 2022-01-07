
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcre_uint32 ;
typedef int pcre_uchar ;
typedef int FILE ;
typedef int BOOL ;


 scalar_t__ PRINTABLE (int) ;
 int* PRIV (int ) ;
 int fprintf (int *,char*,int) ;
 int utf8_table3 ;
 int utf8_table4 ;

__attribute__((used)) static unsigned int
print_char(FILE *f, pcre_uchar *ptr, BOOL utf)
{
pcre_uint32 c = *ptr;



(void)utf;
if (PRINTABLE(c)) fprintf(f, "%c", (char)c);
else if (c <= 0x80) fprintf(f, "\\x%02x", c);
else fprintf(f, "\\x{%x}", c);
return 0;
}
