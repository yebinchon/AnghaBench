
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static inline void
__copy_xstate_to_kernel(void *kbuf, const void *data,
   unsigned int offset, unsigned int size, unsigned int size_total)
{
 if (offset < size_total) {
  unsigned int copy = min(size, size_total - offset);

  memcpy(kbuf + offset, data, copy);
 }
}
