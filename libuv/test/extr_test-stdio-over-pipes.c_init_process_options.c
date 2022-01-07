
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uv_exit_cb ;
struct TYPE_2__ {char* file; char** args; int exit_cb; } ;


 int ASSERT (int) ;
 char** args ;
 char* exepath ;
 size_t exepath_size ;
 TYPE_1__ options ;
 int uv_exepath (char*,size_t*) ;

__attribute__((used)) static void init_process_options(char* test, uv_exit_cb exit_cb) {
  int r = uv_exepath(exepath, &exepath_size);
  ASSERT(r == 0);
  exepath[exepath_size] = '\0';
  args[0] = exepath;
  args[1] = test;
  args[2] = ((void*)0);
  options.file = exepath;
  options.args = args;
  options.exit_cb = exit_cb;
}
