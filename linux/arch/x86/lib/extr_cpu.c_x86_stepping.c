
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int x86_stepping(unsigned int sig)
{
 return sig & 0xf;
}
