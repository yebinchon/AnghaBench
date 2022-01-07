
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int FILE ;


 int JV_PRINT_SPACE0 ;
 int JV_PRINT_SPACE1 ;
 int JV_PRINT_SPACE2 ;
 int JV_PRINT_TAB ;
 int put_char (char,int *,int *,int) ;

__attribute__((used)) static void put_indent(int n, int flags, FILE* fout, jv* strout, int T) {
  if (flags & JV_PRINT_TAB) {
    while (n--)
      put_char('\t', fout, strout, T);
  } else {
    n *= ((flags & (JV_PRINT_SPACE0 | JV_PRINT_SPACE1 | JV_PRINT_SPACE2)) >> 8);
    while (n--)
      put_char(' ', fout, strout, T);
  }
}
