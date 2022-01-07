
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float80 ;


 int f80_add (int ,int ) ;
 int f80_neg (int ) ;

float80 f80_sub(float80 a, float80 b) {
    return f80_add(a, f80_neg(b));
}
