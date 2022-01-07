
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;



__attribute__((used)) static double gbit(int64_t bytes, int64_t passed_ms) {
  double gbits = ((double)bytes / (1024 * 1024 * 1024)) * 8;
  return gbits / ((double)passed_ms / 1000);
}
