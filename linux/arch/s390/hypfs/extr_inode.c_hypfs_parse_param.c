
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hypfs_sb_info {int gid; int uid; } ;
struct fs_parse_result {int uint_32; } ;
struct fs_parameter {int dummy; } ;
struct fs_context {struct hypfs_sb_info* s_fs_info; } ;
typedef int kuid_t ;
typedef int kgid_t ;




 int current_user_ns () ;
 int fs_parse (struct fs_context*,int *,struct fs_parameter*,struct fs_parse_result*) ;
 int gid_valid (int ) ;
 int hypfs_fs_parameters ;
 int invalf (struct fs_context*,char*) ;
 int make_kgid (int ,int ) ;
 int make_kuid (int ,int ) ;
 int uid_valid (int ) ;

__attribute__((used)) static int hypfs_parse_param(struct fs_context *fc, struct fs_parameter *param)
{
 struct hypfs_sb_info *hypfs_info = fc->s_fs_info;
 struct fs_parse_result result;
 kuid_t uid;
 kgid_t gid;
 int opt;

 opt = fs_parse(fc, &hypfs_fs_parameters, param, &result);
 if (opt < 0)
  return opt;

 switch (opt) {
 case 128:
  uid = make_kuid(current_user_ns(), result.uint_32);
  if (!uid_valid(uid))
   return invalf(fc, "Unknown uid");
  hypfs_info->uid = uid;
  break;
 case 129:
  gid = make_kgid(current_user_ns(), result.uint_32);
  if (!gid_valid(gid))
   return invalf(fc, "Unknown gid");
  hypfs_info->gid = gid;
  break;
 }
 return 0;
}
