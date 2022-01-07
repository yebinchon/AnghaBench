
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRT_done () ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;
 char* strerror (int ) ;

void CRT_fatalError(const char* note) {
   char* sysMsg = strerror(errno);
   CRT_done();
   fprintf(stderr, "%s: %s\n", note, sysMsg);
   exit(2);
}
