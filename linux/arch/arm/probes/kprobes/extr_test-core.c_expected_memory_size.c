
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int expected_memory ;


 scalar_t__ current_stack ;

__attribute__((used)) static size_t expected_memory_size(u32 *sp)
{
 size_t size = sizeof(expected_memory);
 int offset = (uintptr_t)sp - (uintptr_t)current_stack;
 if (offset > 0)
  size -= offset;
 return size;
}
