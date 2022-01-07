
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int REMOVE_DIR_EMPTY_ONLY ;
 int remove_dir_recursively (struct strbuf*,int ) ;

__attribute__((used)) static int remove_empty_directories(struct strbuf *path)
{





 return remove_dir_recursively(path, REMOVE_DIR_EMPTY_ONLY);
}
