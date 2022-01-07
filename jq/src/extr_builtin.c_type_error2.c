
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int errbuf2 ;
typedef int errbuf1 ;


 int jv_copy (int ) ;
 int jv_dump_string_trunc (int ,char*,int) ;
 int jv_free (int ) ;
 int jv_get_kind (int ) ;
 int jv_invalid_with_msg (int ) ;
 int jv_kind_name (int ) ;
 int jv_string_fmt (char*,int ,int ,int ,int ,char const*) ;

__attribute__((used)) static jv type_error2(jv bad1, jv bad2, const char* msg) {
  char errbuf1[15],errbuf2[15];
  jv err = jv_invalid_with_msg(jv_string_fmt("%s (%s) and %s (%s) %s",
                                             jv_kind_name(jv_get_kind(bad1)),
                                             jv_dump_string_trunc(jv_copy(bad1), errbuf1, sizeof(errbuf1)),
                                             jv_kind_name(jv_get_kind(bad2)),
                                             jv_dump_string_trunc(jv_copy(bad2), errbuf2, sizeof(errbuf2)),
                                             msg));
  jv_free(bad1);
  jv_free(bad2);
  return err;
}
