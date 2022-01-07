
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 scalar_t__ isdigit (char) ;
 int isxdigit (char) ;
 int kprintf (char*,char) ;
 char tolower (char) ;

__attribute__((used)) static unsigned ord (char x) {
  if (!isxdigit (x)) {
    kprintf ("'%c' isn't hex digit\n", x);
    exit (1);
  }
  if (isdigit (x)) {
    return x - 48;
  }
  x = tolower (x);
  return x - 87;
}
