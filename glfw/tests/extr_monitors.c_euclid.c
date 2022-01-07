
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int euclid(int a, int b)
{
    return b ? euclid(b, a % b) : a;
}
