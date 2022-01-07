
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int jv_free (int ) ;
 int jv_invalid_with_msg (int ) ;

__attribute__((used)) static inline jv ret_error(jv bad, jv msg) {
  jv_free(bad);
  return jv_invalid_with_msg(msg);
}
