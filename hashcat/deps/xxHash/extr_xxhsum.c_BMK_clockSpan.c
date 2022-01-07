
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ clock_t ;


 scalar_t__ clock () ;

__attribute__((used)) static clock_t BMK_clockSpan( clock_t start )
{
    return clock() - start;
}
