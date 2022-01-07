
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 scalar_t__ JV_KIND_INVALID ;
 scalar_t__ jv_get_kind (int ) ;

__attribute__((used)) static int jv_is_valid(jv x) { return jv_get_kind(x) != JV_KIND_INVALID; }
