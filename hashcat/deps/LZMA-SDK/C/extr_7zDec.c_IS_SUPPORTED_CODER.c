
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_3__ {int NumStreams; scalar_t__ MethodID; } ;
typedef TYPE_1__ CSzCoderInfo ;
typedef int BoolInt ;


 scalar_t__ IS_MAIN_METHOD (int ) ;

__attribute__((used)) static BoolInt IS_SUPPORTED_CODER(const CSzCoderInfo *c)
{
  return
      c->NumStreams == 1

      && IS_MAIN_METHOD((UInt32)c->MethodID);
}
