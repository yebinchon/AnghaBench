
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static double bench_mbps(uint64_t t, size_t l, size_t n)
{
    double x = (double)l;

    x *= (double)n;
    x *= 8;
    x /= (double)t;
    return x;
}
