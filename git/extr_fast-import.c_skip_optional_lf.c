
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int fgetc (int ) ;
 int stdin ;
 int ungetc (int,int ) ;

__attribute__((used)) static void skip_optional_lf(void)
{
 int term_char = fgetc(stdin);
 if (term_char != '\n' && term_char != EOF)
  ungetc(term_char, stdin);
}
