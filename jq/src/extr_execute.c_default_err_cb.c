
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int jq_format_error (int ) ;
 int jv_free (int ) ;
 char* jv_string_value (int ) ;

__attribute__((used)) static void default_err_cb(void *data, jv msg) {
  msg = jq_format_error(msg);
  fprintf((FILE *)data, "%s\n", jv_string_value(msg));
  jv_free(msg);
}
