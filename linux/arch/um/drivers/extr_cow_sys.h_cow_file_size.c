
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_file_size (char*,unsigned long long*) ;

__attribute__((used)) static inline int cow_file_size(char *file, unsigned long long *size_out)
{
 return os_file_size(file, size_out);
}
