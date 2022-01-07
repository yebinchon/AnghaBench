
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
find_int_key_in_list (void *data, void *needle)
{
  return (*(int *) data) == (*(int *) needle) ? 1 : 0;
}
