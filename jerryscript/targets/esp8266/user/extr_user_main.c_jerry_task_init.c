
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int length; scalar_t__ source; } ;


 int DECLARE_JS_CODES ;
 TYPE_1__* js_codes ;
 int js_entry () ;
 int js_eval (scalar_t__,int ) ;
 int printf (char*,int,char*) ;
 int show_free_mem (int) ;

__attribute__((used)) static int jerry_task_init(void) {
  DECLARE_JS_CODES;

  js_entry();


  show_free_mem(2);
  for (int src = 1; js_codes[src].source; src++) {
    int retcode = js_eval(js_codes[src].source, js_codes[src].length);
    if (retcode != 0) {
      printf("js_eval failed code(%d) [%s]\r\n", retcode, js_codes[src].name);
      return -1;
    }
  }


  int retcode = js_eval(js_codes[0].source, js_codes[0].length);
  if (retcode != 0) {
    printf("js_eval failed code(%d) [%s]\r\n", retcode, js_codes[0].name);
    return -2;
  }
  show_free_mem(3);
  return 0;
}
