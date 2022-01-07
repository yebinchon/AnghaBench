
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 void* kzalloc (unsigned int,int ) ;

void *jent_zalloc(unsigned int len)
{
 return kzalloc(len, GFP_KERNEL);
}
