
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (char*,int ,int) ;
 int sprintf (char*,char*,unsigned long long) ;
 int strcpy (char*,char*) ;
 int tar_fill_ustar_magic (char*) ;

__attribute__((used)) static int tar_fill_longlink_header (char b[512], int link_length, char ext) {
  memset (b, 0, 512);
  strcpy (b, "././@LongLink");
  sprintf (b + 100, "%07o", 0);
  sprintf (b + 108, "%07o", 0);
  sprintf (b + 116, "%07o", 0);
  sprintf (b + 124, "%011o", link_length + 1);
  sprintf (b + 136, "%011llo", (unsigned long long) 0);
  tar_fill_ustar_magic (b);
  b[156] = ext;
  return 0;
}
