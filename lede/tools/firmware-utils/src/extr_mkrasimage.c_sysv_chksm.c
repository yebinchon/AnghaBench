
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int sysv_chksm(const unsigned char *data, int size)
{
    int r;
    int checksum;
    unsigned int s = 0;


    for (int i = 0; i < size; i++) {
        s += data[i];
    }

    r = (s & 0xffff) + ((s & 0xffffffff) >> 16);
    checksum = (r & 0xffff) + (r >> 16);

    return checksum;
}
