
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int split_modulo ;
 int split_rem ;

__attribute__((used)) static int check_depth1 (int i) {
  return (i % split_modulo) == split_rem;
}
