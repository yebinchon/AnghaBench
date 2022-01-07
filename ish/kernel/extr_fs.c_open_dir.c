
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statbuf {int mode; } ;
struct fd {int dummy; } ;


 int AT_PWD ;
 struct fd* ERR_PTR (int) ;
 int O_RDONLY_ ;
 int S_IFDIR ;
 int _ENOTDIR ;
 struct fd* generic_open (char const*,int ,int ) ;
 int generic_statat (int ,char const*,struct statbuf*,int) ;

__attribute__((used)) static struct fd *open_dir(const char *path) {
    struct statbuf stat;
    int err = generic_statat(AT_PWD, path, &stat, 1);
    if (err < 0)
        return ERR_PTR(err);
    if (!(stat.mode & S_IFDIR))
        return ERR_PTR(_ENOTDIR);

    return generic_open(path, O_RDONLY_, 0);
}
