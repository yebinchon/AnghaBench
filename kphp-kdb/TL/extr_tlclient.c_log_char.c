
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputc (char,int *) ;
 int * log_file ;
 int * stdout ;

__attribute__((used)) static void log_char (char ch) {
  fputc (ch, stdout);
  if (log_file != ((void*)0)) {
    fputc (ch, log_file);
  }
}
