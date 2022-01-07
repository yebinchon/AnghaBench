
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* start; int const* ptr; int const* end; } ;
struct lanai_dev {int transmit_ready; TYPE_1__ service; } ;


 int NUM_VCI ;
 int ServRead_Reg ;
 int ServWrite_Reg ;
 int bitmap_zero (int ,int ) ;
 scalar_t__ handle_service (struct lanai_dev*,int ) ;
 int iter_transmit ;
 int le32_to_cpup (int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int reg_read (struct lanai_dev*,int ) ;
 int reg_write (struct lanai_dev*,int,int ) ;
 int vcc_sklist_lock ;
 int vci_bitfield_iterate (struct lanai_dev*,int ,int ) ;

__attribute__((used)) static void run_service(struct lanai_dev *lanai)
{
 int ntx = 0;
 u32 wreg = reg_read(lanai, ServWrite_Reg);
 const u32 *end = lanai->service.start + wreg;
 while (lanai->service.ptr != end) {
  ntx += handle_service(lanai,
      le32_to_cpup(lanai->service.ptr++));
  if (lanai->service.ptr >= lanai->service.end)
   lanai->service.ptr = lanai->service.start;
 }
 reg_write(lanai, wreg, ServRead_Reg);
 if (ntx != 0) {
  read_lock(&vcc_sklist_lock);
  vci_bitfield_iterate(lanai, lanai->transmit_ready,
      iter_transmit);
  bitmap_zero(lanai->transmit_ready, NUM_VCI);
  read_unlock(&vcc_sklist_lock);
 }
}
