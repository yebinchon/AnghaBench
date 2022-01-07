
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long s64 ;



__attribute__((used)) static bool is_21b_int(s64 val)
{
 return -(1L << 20) <= val && val < (1L << 20);
}
