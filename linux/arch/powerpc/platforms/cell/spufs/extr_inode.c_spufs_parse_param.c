
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spufs_sb_info {int debug; } ;
struct spufs_fs_context {int mode; int gid; int uid; } ;
struct fs_parse_result {int uint_32; } ;
struct fs_parameter {int dummy; } ;
struct fs_context {struct spufs_sb_info* s_fs_info; struct spufs_fs_context* fs_private; } ;
typedef int kuid_t ;
typedef int kgid_t ;






 int S_IALLUGO ;
 int current_user_ns () ;
 int fs_parse (struct fs_context*,int *,struct fs_parameter*,struct fs_parse_result*) ;
 int gid_valid (int ) ;
 int invalf (struct fs_context*,char*) ;
 int make_kgid (int ,int) ;
 int make_kuid (int ,int) ;
 int spufs_fs_parameters ;
 int uid_valid (int ) ;

__attribute__((used)) static int spufs_parse_param(struct fs_context *fc, struct fs_parameter *param)
{
 struct spufs_fs_context *ctx = fc->fs_private;
 struct spufs_sb_info *sbi = fc->s_fs_info;
 struct fs_parse_result result;
 kuid_t uid;
 kgid_t gid;
 int opt;

 opt = fs_parse(fc, &spufs_fs_parameters, param, &result);
 if (opt < 0)
  return opt;

 switch (opt) {
 case 128:
  uid = make_kuid(current_user_ns(), result.uint_32);
  if (!uid_valid(uid))
   return invalf(fc, "Unknown uid");
  ctx->uid = uid;
  break;
 case 130:
  gid = make_kgid(current_user_ns(), result.uint_32);
  if (!gid_valid(gid))
   return invalf(fc, "Unknown gid");
  ctx->gid = gid;
  break;
 case 129:
  ctx->mode = result.uint_32 & S_IALLUGO;
  break;
 case 131:
  sbi->debug = 1;
  break;
 }

 return 0;
}
