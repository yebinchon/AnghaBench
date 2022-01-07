
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_DIR_MODE ;
 int cl_git_pass (int ) ;
 int odb_dir ;
 int p_mkdir (int ,int ) ;

__attribute__((used)) static void make_odb_dir(void)
{
 cl_git_pass(p_mkdir(odb_dir, GIT_OBJECT_DIR_MODE));
}
