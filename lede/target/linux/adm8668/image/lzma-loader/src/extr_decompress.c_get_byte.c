
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* data ;

__attribute__((used)) static __inline__ unsigned char get_byte()
{
 unsigned char *buffer;

 buffer = data;
 data++;

 return *buffer;
}
