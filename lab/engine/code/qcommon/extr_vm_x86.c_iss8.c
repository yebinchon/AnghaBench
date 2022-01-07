
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ SCHAR_MAX ;
 scalar_t__ SCHAR_MIN ;

__attribute__((used)) static int iss8(int32_t v)
{
 return (SCHAR_MIN <= v && v <= SCHAR_MAX);
}
