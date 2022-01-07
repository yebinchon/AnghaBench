
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic_msgr {int num; } ;


 int _mpic_msgr_mer_read (struct mpic_msgr*) ;
 int _mpic_msgr_mer_write (struct mpic_msgr*,int) ;

__attribute__((used)) static inline void _mpic_msgr_disable(struct mpic_msgr *msgr)
{
 u32 mer = _mpic_msgr_mer_read(msgr);

 _mpic_msgr_mer_write(msgr, mer & ~(1 << msgr->num));
}
