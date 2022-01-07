
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int tempfile; } ;
typedef int FILE ;


 int * fdopen_tempfile (int ,char const*) ;

__attribute__((used)) static inline FILE *fdopen_lock_file(struct lock_file *lk, const char *mode)
{
 return fdopen_tempfile(lk->tempfile, mode);
}
