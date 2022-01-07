
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uc_engine ;
typedef int buf ;
typedef int addr_t ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fwrite (char*,int,int,int *) ;
 int uc_mem_read (int *,int ,char*,size_t) ;
 int uc_trycall (int ,char*) ;

void dump_memory(uc_engine *uc, const char *file, addr_t start, size_t size) {
    char buf[size];
    uc_trycall(uc_mem_read(uc, start, buf, size), "uc_mem_read");
    FILE *f = fopen(file, "w");
    fwrite(buf, 1, sizeof(buf), f);
    fclose(f);
}
