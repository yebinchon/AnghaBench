
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int errcnt ;
 int error (char*,char const*) ;
 int exit (int ) ;
 int fprint (int ,char const*,int) ;
 int print (char*) ;
 int stderr ;

int fatal(const char *name, const char *fmt, int n) {
 print("\n");
 errcnt = -1;
 error("compiler error in %s--", name);
 fprint(stderr, fmt, n);
 exit(EXIT_FAILURE);
 return 0;
}
