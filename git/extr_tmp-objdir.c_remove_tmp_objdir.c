
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int the_tmp_objdir ;
 int tmp_objdir_destroy (int ) ;

__attribute__((used)) static void remove_tmp_objdir(void)
{
 tmp_objdir_destroy(the_tmp_objdir);
}
