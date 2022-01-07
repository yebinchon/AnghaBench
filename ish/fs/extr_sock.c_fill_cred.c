
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred_ {int gid; int uid; int pid; } ;
struct TYPE_2__ {int egid; int euid; int pid; } ;


 TYPE_1__* current ;

__attribute__((used)) static void fill_cred(struct ucred_ *cred) {
    cred->pid = current->pid;
    cred->uid = current->euid;
    cred->gid = current->egid;
}
