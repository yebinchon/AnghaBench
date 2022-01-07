
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gzFile ;


 int TAR_PACK_ERR_GZWRITE ;
 int TAR_PACK_ERR_WRITE_HEADER ;
 int gzwrite (int ,char*,int) ;
 int memcpy (char*,char const* const,int) ;
 int memset (char*,int ,int) ;
 scalar_t__ tar_write_header (int ,char*) ;

__attribute__((used)) static int tar_write_long_link_header (gzFile f, char header[512], int link_length, const char *const data) {
  if (tar_write_header (f, header) < 0) {
    return TAR_PACK_ERR_WRITE_HEADER;
  }
  int i;
  for (i = 0; i < link_length + 1; i += 512) {
    int o = link_length + 1 - i;
    if (o > 512) {
      o = 512;
    }
    memset (header, 0, 512);
    memcpy (header, data + i, o);
    if (gzwrite (f, header, 512) != 512) {
      return TAR_PACK_ERR_GZWRITE;
    }
  }
  return 0;
}
