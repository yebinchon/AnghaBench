
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int* jvp_object_buckets (int ) ;
 int jvp_object_mask (int ) ;
 int jvp_string_hash (int ) ;

__attribute__((used)) static int* jvp_object_find_bucket(jv object, jv key) {
  return jvp_object_buckets(object) + (jvp_object_mask(object) & jvp_string_hash(key));
}
