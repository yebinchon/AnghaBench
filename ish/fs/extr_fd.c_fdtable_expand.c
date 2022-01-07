
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdtable {unsigned int size; } ;
typedef int fd_t ;


 int RLIMIT_NOFILE_ ;
 int _EMFILE ;
 int fdtable_resize (struct fdtable*,int) ;
 unsigned int rlimit (int ) ;

__attribute__((used)) static int fdtable_expand(struct fdtable *table, fd_t max) {
    unsigned size = max + 1;
    if (size > rlimit(RLIMIT_NOFILE_))
        return _EMFILE;
    if (table->size >= size)
        return 0;
    return fdtable_resize(table, max + 1);
}
