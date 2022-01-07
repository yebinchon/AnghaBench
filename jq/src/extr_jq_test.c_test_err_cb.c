
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct err_data {int buf; } ;
typedef int jv ;


 scalar_t__ JV_KIND_STRING ;
 int JV_PRINT_INVALID ;
 int jv_dump_string (int ,int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 char* jv_string_value (int ) ;
 int snprintf (int ,int,char*,char*) ;
 char* strchr (int ,char) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void test_err_cb(void *data, jv e) {
  struct err_data *err_data = data;
  if (jv_get_kind(e) != JV_KIND_STRING)
    e = jv_dump_string(e, JV_PRINT_INVALID);
  if (!strncmp(jv_string_value(e), "jq: error", sizeof("jq: error") - 1))
    snprintf(err_data->buf, sizeof(err_data->buf), "%s", jv_string_value(e));
  if (strchr(err_data->buf, '\n'))
    *(strchr(err_data->buf, '\n')) = '\0';
  jv_free(e);
}
