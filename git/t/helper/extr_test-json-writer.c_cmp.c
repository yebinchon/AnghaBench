
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* buf; } ;
struct json_writer {TYPE_1__ json; } ;


 int exit (int) ;
 int printf (char*,char const*,char*,char const*) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static void cmp(const char *test, const struct json_writer *jw, const char *exp)
{
 if (!strcmp(jw->json.buf, exp))
  return;

 printf("error[%s]: observed '%s' expected '%s'\n",
        test, jw->json.buf, exp);
 exit(1);
}
