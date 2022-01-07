
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_info64 {scalar_t__ lo_device; scalar_t__ lo_inode; scalar_t__ lo_rdevice; scalar_t__ lo_offset; scalar_t__ lo_encrypt_type; int lo_encrypt_key; int lo_file_name; int lo_crypt_name; int * lo_init; int lo_flags; int lo_encrypt_key_size; int lo_number; } ;
struct loop_info {scalar_t__ lo_device; scalar_t__ lo_inode; scalar_t__ lo_rdevice; scalar_t__ lo_offset; scalar_t__ lo_encrypt_type; int lo_encrypt_key; int lo_name; int * lo_init; int lo_flags; int lo_encrypt_key_size; int lo_number; } ;


 int EOVERFLOW ;
 scalar_t__ LO_CRYPT_CRYPTOAPI ;
 int LO_KEY_SIZE ;
 int LO_NAME_SIZE ;
 int memcpy (int ,int ,int ) ;
 int memset (struct loop_info*,int ,int) ;

__attribute__((used)) static int
loop_info64_to_old(const struct loop_info64 *info64, struct loop_info *info)
{
 memset(info, 0, sizeof(*info));
 info->lo_number = info64->lo_number;
 info->lo_device = info64->lo_device;
 info->lo_inode = info64->lo_inode;
 info->lo_rdevice = info64->lo_rdevice;
 info->lo_offset = info64->lo_offset;
 info->lo_encrypt_type = info64->lo_encrypt_type;
 info->lo_encrypt_key_size = info64->lo_encrypt_key_size;
 info->lo_flags = info64->lo_flags;
 info->lo_init[0] = info64->lo_init[0];
 info->lo_init[1] = info64->lo_init[1];
 if (info->lo_encrypt_type == LO_CRYPT_CRYPTOAPI)
  memcpy(info->lo_name, info64->lo_crypt_name, LO_NAME_SIZE);
 else
  memcpy(info->lo_name, info64->lo_file_name, LO_NAME_SIZE);
 memcpy(info->lo_encrypt_key, info64->lo_encrypt_key, LO_KEY_SIZE);


 if (info->lo_device != info64->lo_device ||
     info->lo_rdevice != info64->lo_rdevice ||
     info->lo_inode != info64->lo_inode ||
     info->lo_offset != info64->lo_offset)
  return -EOVERFLOW;

 return 0;
}
