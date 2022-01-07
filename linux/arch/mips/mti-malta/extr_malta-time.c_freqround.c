
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int freqround(unsigned int freq, unsigned int amount)
{
 freq += amount;
 freq -= freq % (amount*2);
 return freq;
}
