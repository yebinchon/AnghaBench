
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGABRT ;
 int SIGBUS ;
 int SIGSEGV ;
 int assert (int ) ;
 int printf (char*) ;
 unsigned int randombytes_uniform (unsigned int) ;
 int segv_handler (int ) ;
 int signal (int ,int (*) (int )) ;
 int sodium_free (void*) ;
 void* sodium_malloc (size_t) ;
 int sodium_memzero (unsigned char*,unsigned int) ;
 int sodium_mprotect_noaccess (void*) ;
 int sodium_mprotect_readonly (void*) ;
 int sodium_mprotect_readwrite (void*) ;

int
main(void)
{
    void * buf;
    size_t size;
    size = 1U + randombytes_uniform(100000U);
    buf = sodium_malloc(size);
    assert(buf != ((void*)0));



    sodium_mprotect_noaccess(buf);
    sodium_mprotect_readwrite(buf);
    segv_handler(0);

    return 0;
}
