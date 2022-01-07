
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

__attribute__((used)) static int enu_free(void *opaque, void *elem)
{
    free(elem);
    return 0;
}
