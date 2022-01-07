
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int __decompress (int *,int,int *,int *,int *,int ,int *,void (*) (char*)) ;

int do_decompress(u8 *input, int len, u8 *output, void (*error)(char *x))
{
 return __decompress(input, len, ((void*)0), ((void*)0), output, 0, ((void*)0), error);
}
