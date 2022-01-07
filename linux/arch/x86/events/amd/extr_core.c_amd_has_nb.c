
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hw_events {struct amd_nb* amd_nb; } ;
struct amd_nb {int nb_id; } ;



__attribute__((used)) static inline int amd_has_nb(struct cpu_hw_events *cpuc)
{
 struct amd_nb *nb = cpuc->amd_nb;

 return nb && nb->nb_id != -1;
}
