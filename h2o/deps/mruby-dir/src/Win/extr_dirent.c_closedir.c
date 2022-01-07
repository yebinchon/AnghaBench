
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handle; struct TYPE_4__* name; } ;
typedef TYPE_1__ DIR ;


 int EBADF ;
 int _findclose (int) ;
 int errno ;
 int free (TYPE_1__*) ;

int closedir(DIR *dir)
{
    int result = -1;

    if(dir)
    {
        if(dir->handle != -1)
        {
            result = _findclose(dir->handle);
        }

        free(dir->name);
        free(dir);
    }

    if(result == -1)
    {
        errno = EBADF;
    }

    return result;
}
