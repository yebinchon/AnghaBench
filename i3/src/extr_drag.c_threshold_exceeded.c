
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint32_t ;



__attribute__((used)) static bool threshold_exceeded(uint32_t x1, uint32_t y1,
                               uint32_t x2, uint32_t y2) {
    const uint32_t threshold = 9;
    return (x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2) > threshold * threshold;
}
