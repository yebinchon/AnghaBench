
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static int p970_get_alternatives(u64 event, unsigned int flags, u64 alt[])
{
 alt[0] = event;


 if (event == 0x2002 || event == 0x3002) {
  alt[1] = event ^ 0x1000;
  return 2;
 }

 return 1;
}
