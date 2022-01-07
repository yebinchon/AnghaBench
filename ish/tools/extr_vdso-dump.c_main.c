
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int AT_SYSINFO_EHDR ;
 int * fopen (char*,char*) ;
 int fwrite (void*,int,int,int *) ;
 scalar_t__ getauxval (int ) ;
 int perror (char*) ;

int main() {
    void *vdso = (void *) getauxval(AT_SYSINFO_EHDR);
    FILE *f = fopen("libvdso.so", "w");
    if (f == ((void*)0)) {
        perror("fopen libvdso.so");
        return 1;
    }
    fwrite(vdso, 0x2000, 1, f);
}
