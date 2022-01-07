
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (int *) ;
 int * raw_capacity ;

__attribute__((used)) static int free_raw_capacity(void)
{
 kfree(raw_capacity);
 raw_capacity = ((void*)0);

 return 0;
}
