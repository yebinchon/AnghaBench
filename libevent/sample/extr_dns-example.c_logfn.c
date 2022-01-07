
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*,char const*) ;
 int stderr ;
 int verbose ;

__attribute__((used)) static void
logfn(int is_warn, const char *msg) {
 if (!is_warn && !verbose)
  return;
 fprintf(stderr, "%s: %s\n", is_warn?"WARN":"INFO", msg);
}
