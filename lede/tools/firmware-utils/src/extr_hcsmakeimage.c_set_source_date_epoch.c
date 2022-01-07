
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 char* getenv (char*) ;
 int source_date_epoch ;
 int stderr ;
 int strtoull (char*,char**,int) ;

__attribute__((used)) static void set_source_date_epoch() {
 char *env = getenv("SOURCE_DATE_EPOCH");
 char *endptr = env;
 errno = 0;
        if (env && *env) {
  source_date_epoch = strtoull(env, &endptr, 10);
  if (errno || (endptr && *endptr != '\0')) {
   fprintf(stderr, "Invalid SOURCE_DATE_EPOCH");
   exit(1);
  }
        }
}
