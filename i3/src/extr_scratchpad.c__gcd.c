
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int _gcd(const int m, const int n) {
    if (n == 0)
        return m;
    return _gcd(n, (m % n));
}
