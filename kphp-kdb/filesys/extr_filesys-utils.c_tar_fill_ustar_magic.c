
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void tar_fill_ustar_magic (char b[512]) {
  strcpy (b + 257, "ustar");
  memcpy (b + 263, "00", 2);
}
