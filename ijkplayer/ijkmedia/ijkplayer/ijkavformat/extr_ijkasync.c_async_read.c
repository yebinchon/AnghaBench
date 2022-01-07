
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int URLContext ;


 int async_read_internal (int *,unsigned char*,int,int ,int *) ;

__attribute__((used)) static int async_read(URLContext *h, unsigned char *buf, int size)
{
    return async_read_internal(h, buf, size, 0, ((void*)0));
}
