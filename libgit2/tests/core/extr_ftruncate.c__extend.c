
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ git_off_t ;


 int cl_assert (int) ;
 int fd ;
 int p_fstat (int ,struct stat*) ;
 int p_ftruncate (int ,scalar_t__) ;

__attribute__((used)) static void _extend(git_off_t i64len)
{
 struct stat st;
 int error;

 cl_assert((error = p_ftruncate(fd, i64len)) == 0);
 cl_assert((error = p_fstat(fd, &st)) == 0);
 cl_assert(st.st_size == i64len);
}
