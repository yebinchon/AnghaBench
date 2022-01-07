
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct equiv_cpu_entry {int dummy; } ;


 scalar_t__ CONTAINER_HDR_SZ ;
 scalar_t__ UCODE_EQUIV_CPU_TABLE_TYPE ;
 int pr_debug (char*,...) ;
 int verify_container (int const*,size_t,int) ;

__attribute__((used)) static bool verify_equivalence_table(const u8 *buf, size_t buf_size, bool early)
{
 const u32 *hdr = (const u32 *)buf;
 u32 cont_type, equiv_tbl_len;

 if (!verify_container(buf, buf_size, early))
  return 0;

 cont_type = hdr[1];
 if (cont_type != UCODE_EQUIV_CPU_TABLE_TYPE) {
  if (!early)
   pr_debug("Wrong microcode container equivalence table type: %u.\n",
          cont_type);

  return 0;
 }

 buf_size -= CONTAINER_HDR_SZ;

 equiv_tbl_len = hdr[2];
 if (equiv_tbl_len < sizeof(struct equiv_cpu_entry) ||
     buf_size < equiv_tbl_len) {
  if (!early)
   pr_debug("Truncated equivalence table.\n");

  return 0;
 }

 return 1;
}
