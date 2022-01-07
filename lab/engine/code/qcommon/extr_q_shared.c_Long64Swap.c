
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b0; int b7; int b1; int b6; int b2; int b5; int b3; int b4; } ;
typedef TYPE_1__ qint64 ;



qint64 Long64Swap (qint64 ll)
{
 qint64 result;

 result.b0 = ll.b7;
 result.b1 = ll.b6;
 result.b2 = ll.b5;
 result.b3 = ll.b4;
 result.b4 = ll.b3;
 result.b5 = ll.b2;
 result.b6 = ll.b1;
 result.b7 = ll.b0;

 return result;
}
