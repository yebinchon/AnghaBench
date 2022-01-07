
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static int copy_chunk_to_user(unsigned long to, int len, void *arg)
{
 unsigned long *from_ptr = arg, from = *from_ptr;

 memcpy((void *) to, (void *) from, len);
 *from_ptr += len;
 return 0;
}
