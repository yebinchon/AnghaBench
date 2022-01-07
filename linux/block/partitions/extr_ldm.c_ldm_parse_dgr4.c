
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vblk {int dummy; } ;
typedef int buf ;


 int BUG_ON (int) ;
 int const VBLK_FLAG_DGR4_IDS ;
 scalar_t__ VBLK_SIZE_DGR4 ;
 int get_unaligned_be32 (int const*) ;
 int ldm_get_vstr (int const*,char*,int) ;
 int ldm_relative (int const*,int,int,int) ;

__attribute__((used)) static bool ldm_parse_dgr4 (const u8 *buffer, int buflen, struct vblk *vb)
{
 char buf[64];
 int r_objid, r_name, r_id1, r_id2, len;

 BUG_ON (!buffer || !vb);

 r_objid = ldm_relative (buffer, buflen, 0x18, 0);
 r_name = ldm_relative (buffer, buflen, 0x18, r_objid);

 if (buffer[0x12] & VBLK_FLAG_DGR4_IDS) {
  r_id1 = ldm_relative (buffer, buflen, 0x44, r_name);
  r_id2 = ldm_relative (buffer, buflen, 0x44, r_id1);
  len = r_id2;
 } else {
  r_id1 = 0;
  r_id2 = 0;
  len = r_name;
 }
 if (len < 0)
  return 0;

 len += VBLK_SIZE_DGR4;
 if (len != get_unaligned_be32(buffer + 0x14))
  return 0;

 ldm_get_vstr (buffer + 0x18 + r_objid, buf, sizeof (buf));
 return 1;
}
