
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fd {int dummy; } ;
struct TYPE_4__ {TYPE_1__* fs; } ;
struct TYPE_3__ {int lock; struct fd* pwd; struct fd* root; } ;


 struct fd* AT_PWD ;
 int MAX_PATH ;
 int _ENOENT ;
 int __path_normalize (char*,char const*,char*,int,int ) ;
 int assert (int ) ;
 TYPE_2__* current ;
 int generic_getpath (struct fd*,char*) ;
 int lock (int *) ;
 int path_is_normalized (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int unlock (int *) ;

int path_normalize(struct fd *at, const char *path, char *out, int flags) {
    assert(at != ((void*)0));
    if (strcmp(path, "") == 0)
        return _ENOENT;


    lock(&current->fs->lock);
    if (path[0] == '/')
        at = current->fs->root;
    else if (at == AT_PWD)
        at = current->fs->pwd;
    unlock(&current->fs->lock);
    char at_path[MAX_PATH];
    if (at != ((void*)0)) {
        int err = generic_getpath(at, at_path);
        if (err < 0)
            return err;
        assert(path_is_normalized(at_path));
    }

    return __path_normalize(at != ((void*)0) ? at_path : ((void*)0), path, out, flags, 0);
}
