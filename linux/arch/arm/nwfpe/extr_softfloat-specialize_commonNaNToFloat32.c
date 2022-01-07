
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int float32 ;
struct TYPE_3__ {int high; scalar_t__ sign; } ;
typedef TYPE_1__ commonNaNT ;
typedef int bits32 ;



__attribute__((used)) static float32 commonNaNToFloat32( commonNaNT a )
{

    return ( ( (bits32) a.sign )<<31 ) | 0x7FC00000 | ( a.high>>41 );

}
