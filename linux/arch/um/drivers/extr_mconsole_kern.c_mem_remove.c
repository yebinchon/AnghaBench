
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;

__attribute__((used)) static int mem_remove(int n, char **error_out)
{
 *error_out = "Memory doesn't support the remove operation";
 return -EBUSY;
}
