
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mipc_infohdr {int magic; } ;


 scalar_t__ memcmp (int ,char*,int) ;
 scalar_t__ mipc_check_address (int) ;
 int printf (char*,...) ;

__attribute__((used)) static struct mipc_infohdr *mipc_get_infohdr(void)
{
 struct mipc_infohdr **hdrp, *hdr;


 hdrp = (struct mipc_infohdr **)0x13fffffc;
 if (mipc_check_address((u32)hdrp)) {
  printf("mini: invalid hdrp %08X\n", (u32)hdrp);
  hdr = ((void*)0);
  goto out;
 }

 hdr = *hdrp;
 if (mipc_check_address((u32)hdr)) {
  printf("mini: invalid hdr %08X\n", (u32)hdr);
  hdr = ((void*)0);
  goto out;
 }
 if (memcmp(hdr->magic, "IPC", 3)) {
  printf("mini: invalid magic\n");
  hdr = ((void*)0);
  goto out;
 }

out:
 return hdr;
}
