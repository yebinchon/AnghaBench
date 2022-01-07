
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 scalar_t__ ENOSYS ;
 int SIGABRT ;
 int SIGBUS ;
 int SIGSEGV ;
 unsigned int SIZE_MAX ;
 int assert (int) ;
 scalar_t__ errno ;
 scalar_t__ memcmp (void*,void*,size_t) ;
 int memcpy (void*,void*,size_t) ;
 int memset (void*,unsigned int,size_t) ;
 int printf (char*) ;
 int randombytes_buf (void*,size_t) ;
 unsigned int randombytes_uniform (unsigned int) ;
 int segv_handler (int ) ;
 int signal (int ,int (*) (int )) ;
 void* sodium_allocarray (unsigned int,unsigned int) ;
 int sodium_free (void*) ;
 void* sodium_malloc (size_t) ;
 int sodium_memzero (unsigned char*,unsigned int) ;
 int sodium_mprotect_noaccess (void*) ;
 int sodium_mprotect_readonly (void*) ;
 int sodium_mprotect_readwrite (void*) ;
 scalar_t__ sodium_mshield (void*) ;
 scalar_t__ sodium_munshield (void*) ;

int
main(void)
{
    void *buf;
    void *buf2;
    size_t size;
    unsigned int i;

    size = randombytes_uniform(100U);
    if ((buf = sodium_malloc(size)) == ((void*)0) ||
        (buf2 = sodium_malloc(size)) == ((void*)0)) {
        return 1;
    }
    randombytes_buf(buf, size);
    memcpy(buf2, buf, size);
    errno = EINVAL;
    if (sodium_mshield(buf) != 0) {
        assert(errno == ENOSYS);
    } else {
        assert(size == 0U || memcmp(buf, buf2, size) != 0);
    }
    errno = EINVAL;
    if (sodium_munshield(buf) != 0) {
        assert(errno == ENOSYS);
    } else {
        assert(size == 0U || memcmp(buf, buf2, size) == 0);
    }
    sodium_free(buf2);
    sodium_free(buf);

    if (sodium_malloc(SIZE_MAX - 1U) != ((void*)0)) {
        return 1;
    }
    if (sodium_malloc(0U) == ((void*)0)) {
        return 1;
    }
    if (sodium_allocarray(SIZE_MAX / 2U + 1U, SIZE_MAX / 2U) != ((void*)0)) {
        return 1;
    }
    sodium_free(sodium_allocarray(0U, 0U));
    sodium_free(sodium_allocarray(0U, 1U));
    sodium_free(sodium_allocarray(1U, 0U));

    buf = sodium_allocarray(1000U, 50U);
    memset(buf, 0, 50000U);
    sodium_free(buf);

    sodium_free(sodium_malloc(0U));
    sodium_free(((void*)0));
    for (i = 0U; i < 10000U; i++) {
        size = 1U + randombytes_uniform(100000U);
        buf = sodium_malloc(size);
        assert(buf != ((void*)0));
        memset(buf, i, size);
        sodium_mprotect_noaccess(buf);
        sodium_free(buf);
    }
    printf("OK\n");
    size = 1U + randombytes_uniform(100000U);
    buf = sodium_malloc(size);
    assert(buf != ((void*)0));



    sodium_mprotect_readonly(buf);
    sodium_mprotect_readwrite(buf);
    segv_handler(0);

    return 0;
}
