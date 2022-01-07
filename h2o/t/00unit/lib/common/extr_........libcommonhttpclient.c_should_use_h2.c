
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;



__attribute__((used)) static int should_use_h2(int8_t ratio, int8_t *counter)
{

    if (*counter < 0)
        *counter = ratio == 0 ? 0 : 50 / ratio;
    int use_h2 = (((int)ratio * *counter) % 100) + ratio >= 100;
    if (++*counter == 100)
        *counter = 0;
    return use_h2;
}
