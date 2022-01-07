
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROCESS_DIRS ;
 int PROCESS_FILES ;
 int process_ls_object ;
 scalar_t__* remote_dir_exists ;
 int remote_ls (char*,int,int ,unsigned int*) ;

__attribute__((used)) static void get_remote_object_list(unsigned char parent)
{
 char path[] = "objects/XX/";
 static const char hex[] = "0123456789abcdef";
 unsigned int val = parent;

 path[8] = hex[val >> 4];
 path[9] = hex[val & 0xf];
 remote_dir_exists[val] = 0;
 remote_ls(path, (PROCESS_FILES | PROCESS_DIRS),
    process_ls_object, &val);
}
