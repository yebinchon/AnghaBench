
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct utsname {int machine; int sysname; } ;
struct TYPE_2__ {int hash; int aead; int algo_name; int provider; } ;
typedef int OS ;
typedef int HW ;


 TYPE_1__* aead_list ;
 int bench_basic (scalar_t__*) ;
 int bench_run_aead (char*,char*,int,scalar_t__,int ,int ,int ,int ,int,int,scalar_t__*) ;
 size_t nb_aead_list ;
 int printf (char*,...) ;
 int strcpy (char*,int ) ;
 int strcpy_s (char*,int,char*) ;
 int strlen (int ) ;
 scalar_t__ uname (struct utsname*) ;

int main(int argc, char **argv)
{
    int ret = 0;
    uint64_t x = 0xdeadbeef;
    uint64_t s = 0;
    int basic_ref = bench_basic(&x);
    char OS[128];
    char HW[128];

    struct utsname uts;






    OS[0] = 0;
    HW[0] = 0;
    if (uname(&uts) == 0) {
        if (strlen(uts.sysname) + 1 < sizeof(OS)){
            strcpy(OS, uts.sysname);
        }
        if (strlen(uts.machine) + 1 < sizeof(HW)){
            strcpy(HW, uts.machine);
        }
    }



    printf("OS, HW, bits, mode, 10M ops, provider, version, algorithm, N, L, encrypt us, decrypt us, encrypt mbps, decrypt mbps,\n");


    for (size_t i = 0; ret == 0 && i < nb_aead_list; i++) {
        ret = bench_run_aead(OS, HW, basic_ref, x, aead_list[i].provider, aead_list[i].algo_name, aead_list[i].aead, aead_list[i].hash, 1000,
                             1500, &s);
    }



    if (s == 0){
       printf("Unexpected value of test sum s = %llx\n", (unsigned long long)s);
    }

    return ret;
}
