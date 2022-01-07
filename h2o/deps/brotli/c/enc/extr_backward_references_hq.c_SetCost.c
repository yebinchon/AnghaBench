
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 scalar_t__ FastLog2 (size_t const) ;

__attribute__((used)) static void SetCost(const uint32_t* histogram, size_t histogram_size,
                    float* cost) {
  size_t sum = 0;
  float log2sum;
  size_t i;
  for (i = 0; i < histogram_size; i++) {
    sum += histogram[i];
  }
  log2sum = (float)FastLog2(sum);
  for (i = 0; i < histogram_size; i++) {
    if (histogram[i] == 0) {
      cost[i] = log2sum + 2;
      continue;
    }


    cost[i] = log2sum - (float)FastLog2(histogram[i]);


    if (cost[i] < 1) cost[i] = 1;
  }
}
