
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_buf ;


 int GIT_OID_HEXSZ ;
 int git_buf_put (int *,char*,int) ;
 int git_buf_putc (int *,char) ;
 int git_buf_puts (int *,char const*) ;
 int git_oid_fmt (char*,int const*) ;

void git_oid__writebuf(git_buf *buf, const char *header, const git_oid *oid)
{
 char hex_oid[GIT_OID_HEXSZ];

 git_oid_fmt(hex_oid, oid);
 git_buf_puts(buf, header);
 git_buf_put(buf, hex_oid, GIT_OID_HEXSZ);
 git_buf_putc(buf, '\n');
}
