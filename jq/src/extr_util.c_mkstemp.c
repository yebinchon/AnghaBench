
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 char* alloca (size_t) ;
 int assert (int ) ;
 int mktemp (char*) ;
 int open (char*,int,int) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;

int mkstemp(char *template) {
  size_t len = strlen(template);
  int tries=5;
  int fd;


  char *s = alloca(len + 1);
  assert(s != ((void*)0));
  strcpy(s, template);

  do {

    strcpy(template, s);
    (void) mktemp(template);
    fd = open(template, O_CREAT | O_EXCL | O_RDWR, 0600);
  } while (fd == -1 && tries-- > 0);
  return fd;
}
