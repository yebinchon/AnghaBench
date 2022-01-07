
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_link {int dummy; } ;


 int DPRINTK (char*) ;
 int SCR_ERROR ;
 int sata_print_link_status (struct ata_link*) ;
 int sata_scr_read (struct ata_link*,int ,int *) ;
 int sata_scr_write (struct ata_link*,int ,int ) ;

void ata_std_postreset(struct ata_link *link, unsigned int *classes)
{
 u32 serror;

 DPRINTK("ENTER\n");


 if (!sata_scr_read(link, SCR_ERROR, &serror))
  sata_scr_write(link, SCR_ERROR, serror);


 sata_print_link_status(link);

 DPRINTK("EXIT\n");
}
