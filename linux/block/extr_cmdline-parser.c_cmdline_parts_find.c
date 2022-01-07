
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdline_parts {struct cmdline_parts* next_parts; int name; } ;


 scalar_t__ strncmp (char const*,int ,int) ;

struct cmdline_parts *cmdline_parts_find(struct cmdline_parts *parts,
      const char *bdev)
{
 while (parts && strncmp(bdev, parts->name, sizeof(parts->name)))
  parts = parts->next_parts;
 return parts;
}
