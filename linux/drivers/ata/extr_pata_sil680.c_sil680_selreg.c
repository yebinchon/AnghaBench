
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int port_no; } ;



__attribute__((used)) static unsigned long sil680_selreg(struct ata_port *ap, int r)
{
 unsigned long base = 0xA0 + r;
 base += (ap->port_no << 4);
 return base;
}
