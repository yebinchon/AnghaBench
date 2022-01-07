
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vblk_disk {int disk_id; int alt_name; } ;
struct TYPE_2__ {struct vblk_disk disk; } ;
struct vblk {TYPE_1__ vblk; } ;


 int BUG_ON (int) ;
 scalar_t__ VBLK_SIZE_DSK3 ;
 int get_unaligned_be32 (int const*) ;
 int ldm_get_vstr (int const*,int ,int) ;
 int ldm_relative (int const*,int,int,int) ;
 scalar_t__ uuid_parse (int const*,int *) ;

__attribute__((used)) static bool ldm_parse_dsk3 (const u8 *buffer, int buflen, struct vblk *vb)
{
 int r_objid, r_name, r_diskid, r_altname, len;
 struct vblk_disk *disk;

 BUG_ON (!buffer || !vb);

 r_objid = ldm_relative (buffer, buflen, 0x18, 0);
 r_name = ldm_relative (buffer, buflen, 0x18, r_objid);
 r_diskid = ldm_relative (buffer, buflen, 0x18, r_name);
 r_altname = ldm_relative (buffer, buflen, 0x18, r_diskid);
 len = r_altname;
 if (len < 0)
  return 0;

 len += VBLK_SIZE_DSK3;
 if (len != get_unaligned_be32(buffer + 0x14))
  return 0;

 disk = &vb->vblk.disk;
 ldm_get_vstr (buffer + 0x18 + r_diskid, disk->alt_name,
  sizeof (disk->alt_name));
 if (uuid_parse(buffer + 0x19 + r_name, &disk->disk_id))
  return 0;

 return 1;
}
