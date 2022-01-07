
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_link {int ap; } ;


 int ata_do_link_abort (int ,struct ata_link*) ;

int ata_link_abort(struct ata_link *link)
{
 return ata_do_link_abort(link->ap, link);
}
