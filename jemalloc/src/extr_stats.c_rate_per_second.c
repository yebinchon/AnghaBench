
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static uint64_t
rate_per_second(uint64_t value, uint64_t uptime_ns) {
 uint64_t billion = 1000000000;
 if (uptime_ns == 0 || value == 0) {
  return 0;
 }
 if (uptime_ns < billion) {
  return value;
 } else {
  uint64_t uptime_s = uptime_ns / billion;
  return value / uptime_s;
 }
}
