
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct splice_desc {int len; } ;
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int dummy; } ;



__attribute__((used)) static int pipe_to_null(struct pipe_inode_info *info, struct pipe_buffer *buf,
   struct splice_desc *sd)
{
 return sd->len;
}
