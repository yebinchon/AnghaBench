
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLCR_UNLOCK_MAGIC ;
 int SLCR_UNLOCK_OFFSET ;
 int zynq_slcr_write (int ,int ) ;

__attribute__((used)) static inline int zynq_slcr_unlock(void)
{
 zynq_slcr_write(SLCR_UNLOCK_MAGIC, SLCR_UNLOCK_OFFSET);

 return 0;
}
