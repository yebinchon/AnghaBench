
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int LONG ;


 int ARC_CALL1 (int ,int ) ;
 int close ;

LONG
ArcClose(ULONG FileID)
{
 return ARC_CALL1(close, FileID);
}
