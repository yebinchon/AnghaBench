
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_entry {int dummy; } ;


 int memset (struct name_entry*,int ,int) ;

__attribute__((used)) static void entry_clear(struct name_entry *a)
{
 memset(a, 0, sizeof(*a));
}
