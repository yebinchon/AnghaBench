
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int errbuf ;


 int jv_copy (int ) ;
 int jv_dump_string_trunc (int ,char*,int) ;
 int jv_free (int ) ;
 int jv_get_kind (int ) ;
 int jv_invalid_with_msg (int ) ;
 int jv_kind_name (int ) ;
 int jv_string_fmt (char*,int ,int ,char const*) ;

__attribute__((used)) static jv type_error(jv bad, const char* msg) {
  char errbuf[15];
  jv err = jv_invalid_with_msg(jv_string_fmt("%s (%s) %s",
                                             jv_kind_name(jv_get_kind(bad)),
                                             jv_dump_string_trunc(jv_copy(bad), errbuf, sizeof(errbuf)),
                                             msg));
  jv_free(bad);
  return err;
}
