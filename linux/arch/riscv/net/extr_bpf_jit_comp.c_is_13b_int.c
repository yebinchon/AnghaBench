
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;



__attribute__((used)) static bool is_13b_int(s64 val)
{
 return -(1 << 12) <= val && val < (1 << 12);
}
