
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_HEAD ;
 int R_SECTOR ;
 int R_SIZECODE ;
 int R_TRACK ;
 int pr_cont (char*,int ,int ,int ,int ) ;

__attribute__((used)) static void tell_sector(void)
{
 pr_cont(": track %d, head %d, sector %d, size %d",
  R_TRACK, R_HEAD, R_SECTOR, R_SIZECODE);
}
