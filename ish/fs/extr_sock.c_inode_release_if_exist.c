
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_data {int dummy; } ;


 int inode_release (struct inode_data*) ;

__attribute__((used)) static void inode_release_if_exist(struct inode_data *inode) {
    if (inode != ((void*)0))
        inode_release(inode);
}
