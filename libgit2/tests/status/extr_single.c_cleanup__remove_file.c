
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_must_pass (int ) ;
 int p_unlink (char*) ;

__attribute__((used)) static void
cleanup__remove_file(void *_file)
{
 cl_must_pass(p_unlink((char *)_file));
}
