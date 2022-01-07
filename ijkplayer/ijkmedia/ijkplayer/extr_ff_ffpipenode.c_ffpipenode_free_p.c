
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IJKFF_Pipenode ;


 int ffpipenode_free (int *) ;

void ffpipenode_free_p(IJKFF_Pipenode **node)
{
    if (!node)
        return;

    ffpipenode_free(*node);
    *node = ((void*)0);
}
