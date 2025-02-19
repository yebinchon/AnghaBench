
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int virt_addr_t ;
typedef int u_int8_t ;
typedef size_t u_int32_t ;
typedef size_t u_int ;


 int CYCLE_DELAY ;
 int osp_MicroDelay (int ) ;
 int read_eprom_byte (int ,int ) ;

__attribute__((used)) static void
nicstar_read_eprom(virt_addr_t base,
     u_int8_t prom_offset, u_int8_t * buffer, u_int32_t nbytes)
{
 u_int i;

 for (i = 0; i < nbytes; i++) {
  buffer[i] = read_eprom_byte(base, prom_offset);
  ++prom_offset;
  osp_MicroDelay(CYCLE_DELAY);
 }
}
