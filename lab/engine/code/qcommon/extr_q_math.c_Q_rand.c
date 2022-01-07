
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int Q_rand( int *seed ) {
 *seed = (69069U * *seed + 1U);
 return *seed;
}
