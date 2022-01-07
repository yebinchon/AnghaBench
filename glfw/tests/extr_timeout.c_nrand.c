
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RAND_MAX ;
 scalar_t__ rand () ;

__attribute__((used)) static float nrand(void)
{
    return (float) rand() / (float) RAND_MAX;
}
