
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vpa {scalar_t__ next_gpa; int * pinned_addr; scalar_t__ update_pending; } ;



__attribute__((used)) static int vpa_is_registered(struct kvmppc_vpa *vpap)
{
 if (vpap->update_pending)
  return vpap->next_gpa != 0;
 return vpap->pinned_addr != ((void*)0);
}
