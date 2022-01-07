
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static int copy_chunk_from_user(unsigned long from, int len, void *arg)
{
 unsigned long *to_ptr = arg, to = *to_ptr;

 memcpy((void *) to, (void *) from, len);
 *to_ptr += len;
 return 0;
}
