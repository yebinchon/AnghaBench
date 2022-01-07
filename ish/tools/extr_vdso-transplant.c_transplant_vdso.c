
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef scalar_t__ dword_t ;
typedef int FILE ;


 int AX_SYSINFO ;
 int AX_SYSINFO_EHDR ;
 int PTRACE_POKEDATA ;
 int aux_write (int,int ,scalar_t__) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int perror (char*) ;
 scalar_t__ ptrace (int ,int,scalar_t__,unsigned long) ;
 int sprintf (char*,char*,int) ;
 int sscanf (char*,char*,scalar_t__*,scalar_t__*,char**) ;
 scalar_t__ strcmp (char*,char*) ;

void transplant_vdso(int pid, const void *new_vdso, size_t new_vdso_size) {

    char maps_file[32];
    sprintf(maps_file, "/proc/%d/maps", pid);
    FILE *maps = fopen(maps_file, "r");

    char line[256];
    dword_t start, end;
    while (fgets(line, sizeof(line), maps) != ((void*)0)) {
        char *map_type = ((void*)0);
        sscanf(line, "%8x-%8x %*s %*s %*s %*s %ms\n", &start, &end, &map_type);
        if (map_type) {
            if (strcmp(map_type, "[vdso]") == 0) {
                free(map_type);
                break;
            }
            free(map_type);
        }
    }
    fclose(maps);


    for (dword_t addr = start; addr < end; addr += sizeof(unsigned long)) {
        unsigned long new_vdso_data = 0;
        if (addr - start < new_vdso_size) {
            new_vdso_data = *(unsigned long *) ((char *) new_vdso + addr - start);
        }
        if (ptrace(PTRACE_POKEDATA, pid, addr, new_vdso_data) < 0) {
            perror("ptrace vdso poke"); exit(1);
        }
    }


    dword_t entry = *(dword_t *) ((char *) new_vdso + 24) + start;

    aux_write(pid, AX_SYSINFO, entry);
    aux_write(pid, AX_SYSINFO_EHDR, start);
}
