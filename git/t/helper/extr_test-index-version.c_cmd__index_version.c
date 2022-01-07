
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_header {int hdr_version; } ;
typedef int hdr ;


 int memset (struct cache_header*,int ,int) ;
 int ntohl (int ) ;
 int printf (char*,int) ;
 int read (int ,struct cache_header*,int) ;

int cmd__index_version(int argc, const char **argv)
{
 struct cache_header hdr;
 int version;

 memset(&hdr,0,sizeof(hdr));
 if (read(0, &hdr, sizeof(hdr)) != sizeof(hdr))
  return 0;
 version = ntohl(hdr.hdr_version);
 printf("%d\n", version);
 return 0;
}
