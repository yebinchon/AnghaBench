
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* allowed ;
 int memset (int*,int ,int) ;

void init_allowed (void) {
  int i;
  memset (allowed, 0, 256);
  for (i = '0'; i <= '9'; i++) { allowed[i] = 4; }
  for (i = 'A'; i <= 'Z'; i++) { allowed[i] = 2; }
  for (i = 'a'; i <= 'z'; i++) { allowed[i] = 1; }
  allowed['-'] = 8;
  allowed[','] = 8;
}
