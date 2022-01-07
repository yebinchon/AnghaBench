
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int errbuf ;
typedef int block ;


 scalar_t__ JV_KIND_STRING ;
 int block_const (int ) ;
 scalar_t__ block_const_kind (int ) ;
 scalar_t__ block_is_const (int ) ;
 int jv_dump_string_trunc (int ,char*,int) ;
 int jv_invalid () ;
 int jv_kind_name (scalar_t__) ;
 int jv_string_fmt (char*,int ,int ) ;

__attribute__((used)) static jv check_object_key(block k) {
  if (block_is_const(k) && block_const_kind(k) != JV_KIND_STRING) {
    char errbuf[15];
    return jv_string_fmt("Cannot use %s (%s) as object key",
        jv_kind_name(block_const_kind(k)),
        jv_dump_string_trunc(block_const(k), errbuf, sizeof(errbuf)));
  }
  return jv_invalid();
}
