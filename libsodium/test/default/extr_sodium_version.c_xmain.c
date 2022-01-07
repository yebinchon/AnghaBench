
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int printf (char*,int) ;
 int sodium_library_minimal () ;
 scalar_t__ sodium_library_version_major () ;
 scalar_t__ sodium_library_version_minor () ;
 int * sodium_version_string () ;

int
main(void)
{
    printf("%d\n", sodium_version_string() != ((void*)0));
    printf("%d\n", sodium_library_version_major() > 0);
    printf("%d\n", sodium_library_version_minor() >= 0);



    assert(sodium_library_minimal() == 0);


    return 0;
}
