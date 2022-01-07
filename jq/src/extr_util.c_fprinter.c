
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errno ;
 int fprintf (int *,char*,char const*,char*) ;
 char* strerror (int ) ;

__attribute__((used)) static void fprinter(void *data, const char *fname) {
  fprintf((FILE *)data, "jq: error: Could not open file %s: %s\n", fname, strerror(errno));
}
