
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ZU (int) ;
 int assert_u_eq (int ,unsigned int,char*,unsigned int) ;
 int assert_zu_ge (size_t,unsigned int,char*,unsigned int,size_t) ;
 int assert_zu_lt (size_t,unsigned int,char*,unsigned int,size_t) ;

void
assert_lg_floor_range(size_t input, unsigned answer) {
 if (input == 1) {
  assert_u_eq(0, answer, "Got %u as lg_floor of 1", answer);
  return;
 }
 assert_zu_ge(input, (ZU(1) << answer),
     "Got %u as lg_floor of %zu", answer, input);
 assert_zu_lt(input, (ZU(1) << (answer + 1)),
     "Got %u as lg_floor of %zu", answer, input);
}
