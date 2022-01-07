
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXLINE ;
 int bsize ;
 int * buffer ;
 int * cp ;
 int * file ;
 int fillbuf () ;
 int * limit ;
 scalar_t__ lineno ;
 int main_init (int,char**) ;
 int nextline () ;

void input_init(int argc, char *argv[]) {
 static int inited;

 if (inited)
  return;
 inited = 1;
 main_init(argc, argv);
 limit = cp = &buffer[MAXLINE+1];
 bsize = -1;
 lineno = 0;
 file = ((void*)0);
 fillbuf();
 if (cp >= limit)
  cp = limit;
 nextline();
}
