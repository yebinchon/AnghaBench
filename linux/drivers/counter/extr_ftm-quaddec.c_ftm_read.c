
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ftm_quaddec {scalar_t__ ftm_base; scalar_t__ big_endian; } ;


 scalar_t__ ioread32 (scalar_t__) ;
 scalar_t__ ioread32be (scalar_t__) ;

__attribute__((used)) static void ftm_read(struct ftm_quaddec *ftm, uint32_t offset, uint32_t *data)
{
 if (ftm->big_endian)
  *data = ioread32be(ftm->ftm_base + offset);
 else
  *data = ioread32(ftm->ftm_base + offset);
}
