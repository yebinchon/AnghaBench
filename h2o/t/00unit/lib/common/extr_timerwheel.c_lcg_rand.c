
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAND_MAX ;
 int rseed ;

__attribute__((used)) static inline int lcg_rand()
{
    return rseed = (rseed * 1103515245 + 12345) & RAND_MAX;
}
