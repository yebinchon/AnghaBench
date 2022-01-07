
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ensure_workdir_mode (char const*,int) ;
 int ensure_workdir_oid (char const*,char const*) ;

__attribute__((used)) static void ensure_workdir(const char *path, int mode, const char *oid_str)
{
 ensure_workdir_mode(path, mode);
 ensure_workdir_oid(path, oid_str);
}
