
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; scalar_t__ skipped; scalar_t__ failed; int (* f ) (TYPE_1__*) ;int returnNowBuf; struct TYPE_5__* next; } ;
typedef TYPE_1__ testingT ;


 int fprintf (int ,char*) ;
 int printf (char*,...) ;
 int runDefers (TYPE_1__*) ;
 scalar_t__ setjmp (int ) ;
 int stderr ;
 int stub1 (TYPE_1__*) ;
 TYPE_1__* tests ;

int testingMain(void)
{
 testingT *t;
 int anyFailed;
 const char *status;


 if (tests == ((void*)0)) {
  fprintf(stderr, "warning: no tests to run\n");

  return 0;
 }

 anyFailed = 0;
 for (t = tests; t != ((void*)0); t = t->next) {
  printf("=== RUN   %s\n", t->name);
  if (setjmp(t->returnNowBuf) == 0)
   (*(t->f))(t);
  runDefers(t);
  status = "PASS";
  if (t->failed) {
   status = "FAIL";
   anyFailed = 1;
  } else if (t->skipped)

   status = "SKIP";
  printf("--- %s: %s (%s)\n", status, t->name, "TODO");
 }

 if (anyFailed) {
  printf("FAIL\n");
  return 1;
 }
 printf("PASS\n");
 return 0;
}
