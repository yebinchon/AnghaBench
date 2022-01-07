
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword_t ;


 int aux_addr (int,int) ;
 void pt_write (int,int ,int ) ;

__attribute__((used)) static void aux_write(int pid, int type, dword_t value) {
    return pt_write(pid, aux_addr(pid, type), value);
}
