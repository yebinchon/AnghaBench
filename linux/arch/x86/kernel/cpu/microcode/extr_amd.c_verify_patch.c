
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
typedef int u16 ;
struct microcode_header_amd {int processor_rev_id; int patch_id; scalar_t__ sb_dev_id; scalar_t__ nb_dev_id; } ;


 int SECTION_HDR_SIZE ;
 int __verify_patch_section (int const*,size_t,size_t*,int) ;
 unsigned int __verify_patch_size (int,size_t,size_t) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int
verify_patch(u8 family, const u8 *buf, size_t buf_size, u32 *patch_size, bool early)
{
 struct microcode_header_amd *mc_hdr;
 unsigned int ret;
 u32 sh_psize;
 u16 proc_id;
 u8 patch_fam;

 if (!__verify_patch_section(buf, buf_size, &sh_psize, early))
  return -1;






 buf_size -= SECTION_HDR_SIZE;





 if (buf_size < sh_psize) {
  if (!early)
   pr_debug("Patch of size %u truncated.\n", sh_psize);

  return -1;
 }

 ret = __verify_patch_size(family, sh_psize, buf_size);
 if (!ret) {
  if (!early)
   pr_debug("Per-family patch size mismatch.\n");
  return -1;
 }

 *patch_size = sh_psize;

 mc_hdr = (struct microcode_header_amd *)(buf + SECTION_HDR_SIZE);
 if (mc_hdr->nb_dev_id || mc_hdr->sb_dev_id) {
  if (!early)
   pr_err("Patch-ID 0x%08x: chipset-specific code unsupported.\n", mc_hdr->patch_id);
  return -1;
 }

 proc_id = mc_hdr->processor_rev_id;
 patch_fam = 0xf + (proc_id >> 12);
 if (patch_fam != family)
  return 1;

 return 0;
}
