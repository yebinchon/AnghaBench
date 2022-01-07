
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_packbuilder ;
typedef int git_buf ;


 int PREPARE_PACK ;
 int git_buf_sanitize (int *) ;
 int write_pack (int *,int *,int *) ;
 int write_pack_buf ;

int git_packbuilder_write_buf(git_buf *buf, git_packbuilder *pb)
{
 PREPARE_PACK;
 git_buf_sanitize(buf);
 return write_pack(pb, &write_pack_buf, buf);
}
