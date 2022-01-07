
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acomp_req {int dummy; } ;


 int scomp_acomp_comp_decomp (struct acomp_req*,int) ;

__attribute__((used)) static int scomp_acomp_compress(struct acomp_req *req)
{
 return scomp_acomp_comp_decomp(req, 1);
}
