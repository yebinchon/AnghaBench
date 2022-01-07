
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char const uint32_t ;



__attribute__((used)) static uint32_t take2(const unsigned char *sha1)
{
 return ((sha1[0] << 8) | sha1[1]);
}
