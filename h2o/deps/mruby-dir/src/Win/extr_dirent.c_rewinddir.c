
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int handle_type ;
struct TYPE_4__ {scalar_t__ d_name; } ;
struct TYPE_5__ {int handle; TYPE_1__ result; int info; int name; } ;
typedef TYPE_2__ DIR ;


 int EBADF ;
 int _findclose (int) ;
 scalar_t__ _findfirst (int ,int *) ;
 int errno ;

void rewinddir(DIR *dir)
{
    if(dir && dir->handle != -1)
    {
        _findclose(dir->handle);
        dir->handle = (handle_type) _findfirst(dir->name, &dir->info);
        dir->result.d_name = 0;
    }
    else
    {
        errno = EBADF;
    }
}
