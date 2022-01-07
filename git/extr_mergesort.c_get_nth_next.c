
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void *get_nth_next(void *list, unsigned long n,
     void *(*get_next_fn)(const void *))
{
 while (n-- && list)
  list = get_next_fn(list);
 return list;
}
