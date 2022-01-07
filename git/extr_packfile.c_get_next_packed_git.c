
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {void* next; } ;



__attribute__((used)) static void *get_next_packed_git(const void *p)
{
 return ((const struct packed_git *)p)->next;
}
