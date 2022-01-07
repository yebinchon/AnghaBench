
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vmdb {int ver_major; int ver_minor; scalar_t__ vblk_size; scalar_t__ last_vblk_seq; scalar_t__ vblk_offset; } ;


 int BUG_ON (int) ;
 scalar_t__ MAGIC_VMDB ;
 void* get_unaligned_be16 (int const*) ;
 scalar_t__ get_unaligned_be32 (int const*) ;
 int ldm_crit (char*) ;
 int ldm_debug (char*) ;
 int ldm_error (char*,...) ;

__attribute__((used)) static bool ldm_parse_vmdb (const u8 *data, struct vmdb *vm)
{
 BUG_ON (!data || !vm);

 if (MAGIC_VMDB != get_unaligned_be32(data)) {
  ldm_crit ("Cannot find the VMDB, database may be corrupt.");
  return 0;
 }

 vm->ver_major = get_unaligned_be16(data + 0x12);
 vm->ver_minor = get_unaligned_be16(data + 0x14);
 if ((vm->ver_major != 4) || (vm->ver_minor != 10)) {
  ldm_error ("Expected VMDB version %d.%d, got %d.%d. "
   "Aborting.", 4, 10, vm->ver_major, vm->ver_minor);
  return 0;
 }

 vm->vblk_size = get_unaligned_be32(data + 0x08);
 if (vm->vblk_size == 0) {
  ldm_error ("Illegal VBLK size");
  return 0;
 }

 vm->vblk_offset = get_unaligned_be32(data + 0x0C);
 vm->last_vblk_seq = get_unaligned_be32(data + 0x04);

 ldm_debug ("Parsed VMDB successfully.");
 return 1;
}
