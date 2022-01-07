
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long SYSIO_ICLR_UNUSED0 ;
 unsigned long SYSIO_IMAP_SLOT0 ;

__attribute__((used)) static unsigned long sysio_imap_to_iclr(unsigned long imap)
{
 unsigned long diff = SYSIO_ICLR_UNUSED0 - SYSIO_IMAP_SLOT0;
 return imap + diff;
}
