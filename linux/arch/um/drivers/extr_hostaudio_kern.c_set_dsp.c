
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* dsp ;

__attribute__((used)) static int set_dsp(char *name, int *add)
{
 dsp = name;
 return 0;
}
