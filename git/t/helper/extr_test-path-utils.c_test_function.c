
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_data {char* from; scalar_t__ alternative; scalar_t__ to; } ;
typedef int buffer ;


 int error (char*,char const*,char*,char*,scalar_t__,...) ;
 int strcmp (char*,scalar_t__) ;
 int xsnprintf (char*,int,char*,char*) ;

__attribute__((used)) static int test_function(struct test_data *data, char *(*func)(char *input),
 const char *funcname)
{
 int failed = 0, i;
 char buffer[1024];
 char *to;

 for (i = 0; data[i].to; i++) {
  if (!data[i].from)
   to = func(((void*)0));
  else {
   xsnprintf(buffer, sizeof(buffer), "%s", data[i].from);
   to = func(buffer);
  }
  if (!strcmp(to, data[i].to))
   continue;
  if (!data[i].alternative)
   error("FAIL: %s(%s) => '%s' != '%s'\n",
    funcname, data[i].from, to, data[i].to);
  else if (!strcmp(to, data[i].alternative))
   continue;
  else
   error("FAIL: %s(%s) => '%s' != '%s', '%s'\n",
    funcname, data[i].from, to, data[i].to,
    data[i].alternative);
  failed = 1;
 }
 return failed;
}
