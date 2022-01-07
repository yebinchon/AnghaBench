
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _gcd (int const,int const) ;

__attribute__((used)) static int _lcm(const int m, const int n) {
    const int o = _gcd(m, n);
    return ((m * n) / o);
}
