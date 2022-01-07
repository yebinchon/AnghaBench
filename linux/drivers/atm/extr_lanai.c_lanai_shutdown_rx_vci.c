
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_vcc {int * vbase; } ;


 int RMMODE_TRASH ;
 int RXADDR1_SET_MODE (int ) ;
 int RXADDR1_SET_RMMODE (int ) ;
 int RXMODE_TRASH ;
 int cardvcc_write (struct lanai_vcc const*,int,int ) ;
 int udelay (int) ;
 int vcc_rxaddr1 ;
 int vcc_rxaddr2 ;
 int vcc_rxbufstart ;
 int vcc_rxcrc1 ;
 int vcc_rxcrc2 ;
 int vcc_rxreadptr ;
 int vcc_rxwriteptr ;

__attribute__((used)) static void lanai_shutdown_rx_vci(const struct lanai_vcc *lvcc)
{
 if (lvcc->vbase == ((void*)0))
  return;

 cardvcc_write(lvcc,
     RXADDR1_SET_RMMODE(RMMODE_TRASH) |
     RXADDR1_SET_MODE(RXMODE_TRASH), vcc_rxaddr1);
 udelay(15);

 cardvcc_write(lvcc, 0, vcc_rxaddr2);
 cardvcc_write(lvcc, 0, vcc_rxcrc1);
 cardvcc_write(lvcc, 0, vcc_rxcrc2);
 cardvcc_write(lvcc, 0, vcc_rxwriteptr);
 cardvcc_write(lvcc, 0, vcc_rxbufstart);
 cardvcc_write(lvcc, 0, vcc_rxreadptr);
}
