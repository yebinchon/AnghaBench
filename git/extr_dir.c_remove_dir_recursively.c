
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int remove_dir_recurse (struct strbuf*,int,int *) ;

int remove_dir_recursively(struct strbuf *path, int flag)
{
 return remove_dir_recurse(path, flag, ((void*)0));
}
