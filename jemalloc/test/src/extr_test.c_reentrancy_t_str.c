
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reentrancy_t ;





 int unreachable () ;

__attribute__((used)) static const char *
reentrancy_t_str(reentrancy_t r) {
 switch (r) {
 case 128:
  return "non-reentrant";
 case 129:
  return "libc-reentrant";
 case 130:
  return "arena_new-reentrant";
 default:
  unreachable();
 }
}
