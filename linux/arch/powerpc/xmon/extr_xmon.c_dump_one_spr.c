
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,int,...) ;
 int read_spr (int,unsigned long*) ;

__attribute__((used)) static void dump_one_spr(int spr, bool show_unimplemented)
{
 unsigned long val;

 val = 0xdeadbeef;
 if (!read_spr(spr, &val)) {
  printf("SPR 0x%03x (%4d) Faulted during read\n", spr, spr);
  return;
 }

 if (val == 0xdeadbeef) {

  val = 0x0badcafe;
  if (!read_spr(spr, &val)) {
   printf("SPR 0x%03x (%4d) Faulted during read\n", spr, spr);
   return;
  }

  if (val == 0x0badcafe) {
   if (show_unimplemented)
    printf("SPR 0x%03x (%4d) Unimplemented\n", spr, spr);
   return;
  }
 }

 printf("SPR 0x%03x (%4d) = 0x%lx\n", spr, spr, val);
}
