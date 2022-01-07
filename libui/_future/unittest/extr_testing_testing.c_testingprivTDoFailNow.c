
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int testingT ;


 int returnNow (int *) ;
 int testingTFail (int *) ;

void testingprivTDoFailNow(testingT *t)
{
 testingTFail(t);
 returnNow(t);
}
