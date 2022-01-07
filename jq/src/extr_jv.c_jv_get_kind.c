
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv_kind ;
typedef int jv ;


 int JVP_KIND (int ) ;

jv_kind jv_get_kind(jv x) {
  return JVP_KIND(x);
}
