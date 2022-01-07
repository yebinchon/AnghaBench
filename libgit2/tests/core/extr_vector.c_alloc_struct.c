
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int content; scalar_t__ count; } ;
typedef TYPE_1__ my_struct ;


 int _struct_count ;
 TYPE_1__* git__malloc (int) ;

__attribute__((used)) static my_struct *alloc_struct(int value)
{
 my_struct *st = git__malloc(sizeof(my_struct));
 st->content = value;
 st->count = 0;
 _struct_count++;
 return st;
}
