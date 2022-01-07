
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct h5 {int tx_win; } ;



__attribute__((used)) static u8 h5_cfg_field(struct h5 *h5)
{

 return h5->tx_win & 0x07;
}
