
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 size_t CONTAINER_HDR_SZ ;
 scalar_t__ UCODE_MAGIC ;
 int pr_debug (char*,...) ;

__attribute__((used)) static bool verify_container(const u8 *buf, size_t buf_size, bool early)
{
 u32 cont_magic;

 if (buf_size <= CONTAINER_HDR_SZ) {
  if (!early)
   pr_debug("Truncated microcode container header.\n");

  return 0;
 }

 cont_magic = *(const u32 *)buf;
 if (cont_magic != UCODE_MAGIC) {
  if (!early)
   pr_debug("Invalid magic value (0x%08x).\n", cont_magic);

  return 0;
 }

 return 1;
}
