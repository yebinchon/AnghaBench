
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct blob_buf {int dummy; } ;


 int MAC2STR (int const*) ;
 char* MACSTR ;
 int blobmsg_add_string_buffer (struct blob_buf*) ;
 char* blobmsg_alloc_string_buffer (struct blob_buf*,char const*,int) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static void
blobmsg_add_macaddr(struct blob_buf *buf, const char *name, const u8 *addr)
{
 char *s;

 s = blobmsg_alloc_string_buffer(buf, name, 20);
 sprintf(s, MACSTR, MAC2STR(addr));
 blobmsg_add_string_buffer(buf);
}
