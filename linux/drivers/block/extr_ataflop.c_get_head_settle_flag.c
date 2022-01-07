
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HeadSettleFlag ;

__attribute__((used)) static inline int get_head_settle_flag(void)
{
 int tmp = HeadSettleFlag;
 HeadSettleFlag = 0;
 return( tmp );
}
