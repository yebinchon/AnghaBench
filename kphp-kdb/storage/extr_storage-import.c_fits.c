
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int split_modulo ;
 int split_rem ;

__attribute__((used)) static inline int fits (int user_id) {
  if (user_id < 0) {
    user_id = -user_id;
  }
  return (user_id % split_modulo == split_rem);
}
