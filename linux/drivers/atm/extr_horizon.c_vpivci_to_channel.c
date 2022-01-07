
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EINVAL ;
 int vpi_bits ;

__attribute__((used)) static inline int vpivci_to_channel (u16 * channel, const short vpi, const int vci) {
  unsigned short vci_bits = 10 - vpi_bits;
  if (0 <= vpi && vpi < 1<<vpi_bits && 0 <= vci && vci < 1<<vci_bits) {
    *channel = vpi<<vci_bits | vci;
    return *channel ? 0 : -EINVAL;
  }
  return -EINVAL;
}
