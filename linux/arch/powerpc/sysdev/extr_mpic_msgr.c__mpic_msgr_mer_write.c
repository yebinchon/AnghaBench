
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic_msgr {int mer; } ;


 int out_be32 (int ,int ) ;

__attribute__((used)) static inline void _mpic_msgr_mer_write(struct mpic_msgr *msgr, u32 value)
{
 out_be32(msgr->mer, value);
}
