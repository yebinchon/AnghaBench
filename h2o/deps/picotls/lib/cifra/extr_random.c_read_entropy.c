
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ssize_t ;


 scalar_t__ EINTR ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int abort () ;
 int close (int) ;
 scalar_t__ errno ;
 int open (char*,int) ;
 int perror (char*) ;
 int read (int,int *,size_t) ;

__attribute__((used)) static void read_entropy(uint8_t *entropy, size_t size)
{
    int fd;

    if ((fd = open("/dev/urandom", O_RDONLY | O_CLOEXEC)) == -1) {
        if ((fd = open("/dev/random", O_RDONLY | O_CLOEXEC)) == -1) {
            perror("ptls_minicrypto_random_bytes: could not open neither /dev/random or /dev/urandom");
            abort();
        }
    }

    while (size != 0) {
        ssize_t rret;
        while ((rret = read(fd, entropy, size)) == -1 && errno == EINTR)
            ;
        if (rret < 0) {
            perror("ptls_minicrypto_random_bytes");
            abort();
        }
        entropy += rret;
        size -= rret;
    }

    close(fd);
}
