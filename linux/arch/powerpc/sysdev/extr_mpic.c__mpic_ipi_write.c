
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic {int gregs; int reg_type; } ;


 int GREG_IPI_STRIDE ;
 int GREG_IPI_VECTOR_PRI_0 ;
 unsigned int MPIC_INFO (int ) ;
 int _mpic_write (int ,int *,unsigned int,int ) ;

__attribute__((used)) static inline void _mpic_ipi_write(struct mpic *mpic, unsigned int ipi, u32 value)
{
 unsigned int offset = MPIC_INFO(GREG_IPI_VECTOR_PRI_0) +
         (ipi * MPIC_INFO(GREG_IPI_STRIDE));

 _mpic_write(mpic->reg_type, &mpic->gregs, offset, value);
}
