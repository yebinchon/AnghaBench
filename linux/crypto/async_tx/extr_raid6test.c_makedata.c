
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int * data ;
 int * dataptrs ;
 int page_address (int ) ;
 int prandom_bytes (int ,int ) ;

__attribute__((used)) static void makedata(int disks)
{
 int i;

 for (i = 0; i < disks; i++) {
  prandom_bytes(page_address(data[i]), PAGE_SIZE);
  dataptrs[i] = data[i];
 }
}
