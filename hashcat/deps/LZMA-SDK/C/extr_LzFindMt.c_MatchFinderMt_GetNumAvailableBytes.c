
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_3__ {int btNumAvailBytes; } ;
typedef TYPE_1__ CMatchFinderMt ;


 int GET_NEXT_BLOCK_IF_REQUIRED ;

__attribute__((used)) static UInt32 MatchFinderMt_GetNumAvailableBytes(CMatchFinderMt *p)
{
  GET_NEXT_BLOCK_IF_REQUIRED;
  return p->btNumAvailBytes;
}
