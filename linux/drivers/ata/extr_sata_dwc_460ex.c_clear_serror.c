
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_port {int link; } ;


 int SCR_ERROR ;
 int sata_dwc_scr_read (int *,int ,int *) ;
 int sata_dwc_scr_write (int *,int ,int ) ;

__attribute__((used)) static void clear_serror(struct ata_port *ap)
{
 u32 val;
 sata_dwc_scr_read(&ap->link, SCR_ERROR, &val);
 sata_dwc_scr_write(&ap->link, SCR_ERROR, val);
}
