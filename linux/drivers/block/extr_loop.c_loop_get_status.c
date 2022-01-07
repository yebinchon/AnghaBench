
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {int dummy; } ;
struct loop_info64 {void* lo_rdevice; int lo_inode; void* lo_device; int lo_encrypt_key; scalar_t__ lo_encrypt_key_size; int lo_encrypt_type; int lo_crypt_name; int lo_file_name; int lo_flags; int lo_sizelimit; int lo_offset; int lo_number; } ;
struct loop_device {scalar_t__ lo_state; TYPE_2__* lo_backing_file; scalar_t__ lo_encrypt_key_size; int lo_encrypt_key; TYPE_1__* lo_encryption; int lo_crypt_name; int lo_file_name; int lo_flags; int lo_sizelimit; int lo_offset; int lo_number; } ;
struct kstat {int rdev; int ino; int dev; } ;
struct TYPE_4__ {struct path f_path; } ;
struct TYPE_3__ {int number; } ;


 int AT_STATX_SYNC_AS_STAT ;
 int CAP_SYS_ADMIN ;
 int ENXIO ;
 scalar_t__ LO_NAME_SIZE ;
 scalar_t__ Lo_bound ;
 int STATX_INO ;
 scalar_t__ capable (int ) ;
 void* huge_encode_dev (int ) ;
 int loop_ctl_mutex ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (struct loop_info64*,int ,int) ;
 int mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int path_get (struct path*) ;
 int path_put (struct path*) ;
 int vfs_getattr (struct path*,struct kstat*,int ,int ) ;

__attribute__((used)) static int
loop_get_status(struct loop_device *lo, struct loop_info64 *info)
{
 struct path path;
 struct kstat stat;
 int ret;

 ret = mutex_lock_killable(&loop_ctl_mutex);
 if (ret)
  return ret;
 if (lo->lo_state != Lo_bound) {
  mutex_unlock(&loop_ctl_mutex);
  return -ENXIO;
 }

 memset(info, 0, sizeof(*info));
 info->lo_number = lo->lo_number;
 info->lo_offset = lo->lo_offset;
 info->lo_sizelimit = lo->lo_sizelimit;
 info->lo_flags = lo->lo_flags;
 memcpy(info->lo_file_name, lo->lo_file_name, LO_NAME_SIZE);
 memcpy(info->lo_crypt_name, lo->lo_crypt_name, LO_NAME_SIZE);
 info->lo_encrypt_type =
  lo->lo_encryption ? lo->lo_encryption->number : 0;
 if (lo->lo_encrypt_key_size && capable(CAP_SYS_ADMIN)) {
  info->lo_encrypt_key_size = lo->lo_encrypt_key_size;
  memcpy(info->lo_encrypt_key, lo->lo_encrypt_key,
         lo->lo_encrypt_key_size);
 }


 path = lo->lo_backing_file->f_path;
 path_get(&path);
 mutex_unlock(&loop_ctl_mutex);
 ret = vfs_getattr(&path, &stat, STATX_INO, AT_STATX_SYNC_AS_STAT);
 if (!ret) {
  info->lo_device = huge_encode_dev(stat.dev);
  info->lo_inode = stat.ino;
  info->lo_rdevice = huge_encode_dev(stat.rdev);
 }
 path_put(&path);
 return ret;
}
