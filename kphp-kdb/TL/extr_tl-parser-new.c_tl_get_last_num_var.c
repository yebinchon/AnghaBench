
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_var {int dummy; } ;


 struct tl_var** last_num_var ;
 size_t namespace_level ;

struct tl_var *tl_get_last_num_var (void) {
  return last_num_var[namespace_level];
}
