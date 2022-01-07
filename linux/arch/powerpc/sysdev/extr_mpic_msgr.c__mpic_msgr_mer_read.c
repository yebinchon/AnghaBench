
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic_msgr {int mer; } ;


 int in_be32 (int ) ;

__attribute__((used)) static inline u32 _mpic_msgr_mer_read(struct mpic_msgr *msgr)
{
 return in_be32(msgr->mer);
}
