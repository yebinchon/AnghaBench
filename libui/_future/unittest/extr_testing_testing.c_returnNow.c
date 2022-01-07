
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int returnNowBuf; } ;
typedef TYPE_1__ testingT ;


 int longjmp (int ,int) ;
 int runDefers (TYPE_1__*) ;

__attribute__((used)) static void returnNow(testingT *t)
{

 runDefers(t);
 longjmp(t->returnNowBuf, 1);
}
