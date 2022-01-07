
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_info64 {scalar_t__ lo_encrypt_type; int lo_encrypt_key; int lo_file_name; int lo_crypt_name; int * lo_init; int lo_flags; int lo_encrypt_key_size; scalar_t__ lo_sizelimit; int lo_offset; int lo_rdevice; int lo_inode; int lo_device; int lo_number; } ;
struct loop_info {scalar_t__ lo_encrypt_type; int lo_encrypt_key; int lo_name; int * lo_init; int lo_flags; int lo_encrypt_key_size; int lo_offset; int lo_rdevice; int lo_inode; int lo_device; int lo_number; } ;


 scalar_t__ LO_CRYPT_CRYPTOAPI ;
 int LO_KEY_SIZE ;
 int LO_NAME_SIZE ;
 int memcpy (int ,int ,int ) ;
 int memset (struct loop_info64*,int ,int) ;

__attribute__((used)) static void
loop_info64_from_old(const struct loop_info *info, struct loop_info64 *info64)
{
 memset(info64, 0, sizeof(*info64));
 info64->lo_number = info->lo_number;
 info64->lo_device = info->lo_device;
 info64->lo_inode = info->lo_inode;
 info64->lo_rdevice = info->lo_rdevice;
 info64->lo_offset = info->lo_offset;
 info64->lo_sizelimit = 0;
 info64->lo_encrypt_type = info->lo_encrypt_type;
 info64->lo_encrypt_key_size = info->lo_encrypt_key_size;
 info64->lo_flags = info->lo_flags;
 info64->lo_init[0] = info->lo_init[0];
 info64->lo_init[1] = info->lo_init[1];
 if (info->lo_encrypt_type == LO_CRYPT_CRYPTOAPI)
  memcpy(info64->lo_crypt_name, info->lo_name, LO_NAME_SIZE);
 else
  memcpy(info64->lo_file_name, info->lo_name, LO_NAME_SIZE);
 memcpy(info64->lo_encrypt_key, info->lo_encrypt_key, LO_KEY_SIZE);
}
