
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testsuite {int failed; } ;
struct strbuf {int dummy; } ;


 int strbuf_addf (struct strbuf*,char*,char*,char const*) ;
 int string_list_append (int *,char const*) ;

__attribute__((used)) static int test_finished(int result, struct strbuf *err, void *cb,
    void *task_cb)
{
 struct testsuite *suite = cb;
 const char *name = (const char *)task_cb;

 if (result)
  string_list_append(&suite->failed, name);

 strbuf_addf(err, "%s: '%s'\n", result ? "FAIL" : "SUCCESS", name);

 return 0;
}
