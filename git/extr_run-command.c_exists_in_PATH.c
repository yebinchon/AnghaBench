
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* locate_in_PATH (char const*) ;

__attribute__((used)) static int exists_in_PATH(const char *file)
{
 char *r = locate_in_PATH(file);
 free(r);
 return r != ((void*)0);
}
