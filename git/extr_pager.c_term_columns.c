
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_col; } ;


 int TIOCGWINSZ ;
 int atoi (char*) ;
 char* getenv (char*) ;
 int ioctl (int,int ,struct winsize*) ;

int term_columns(void)
{
 static int term_columns_at_startup;

 char *col_string;
 int n_cols;

 if (term_columns_at_startup)
  return term_columns_at_startup;

 term_columns_at_startup = 80;

 col_string = getenv("COLUMNS");
 if (col_string && (n_cols = atoi(col_string)) > 0)
  term_columns_at_startup = n_cols;
 return term_columns_at_startup;
}
