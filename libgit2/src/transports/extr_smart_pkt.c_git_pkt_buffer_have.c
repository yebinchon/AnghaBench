
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oidhex ;
typedef int git_oid ;
typedef int git_buf ;


 int GIT_OID_HEXSZ ;
 int git_buf_printf (int *,char*,int ,char*) ;
 int git_oid_fmt (char*,int *) ;
 int memset (char*,int,int) ;
 int pkt_have_prefix ;

int git_pkt_buffer_have(git_oid *oid, git_buf *buf)
{
 char oidhex[GIT_OID_HEXSZ + 1];

 memset(oidhex, 0x0, sizeof(oidhex));
 git_oid_fmt(oidhex, oid);
 return git_buf_printf(buf, "%s%s\n", pkt_have_prefix, oidhex);
}
