
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int htonl (int ) ;
 int memcpy (char*,char*,int) ;

void int2tag(char *tag, uint32_t value) {
  uint32_t network = htonl(value);
  memcpy(tag, (char *)(&network), 4);
}
