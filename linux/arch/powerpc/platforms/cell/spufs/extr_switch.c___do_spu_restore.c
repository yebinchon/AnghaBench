
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int dummy; } ;
struct spu {int dummy; } ;


 int check_restore_status (struct spu_state*,struct spu*) ;
 int restore_csa (struct spu_state*,struct spu*) ;
 int restore_lscsa (struct spu_state*,struct spu*) ;

__attribute__((used)) static int __do_spu_restore(struct spu_state *next, struct spu *spu)
{
 int rc;
 restore_lscsa(next, spu);
 rc = check_restore_status(next, spu);
 switch (rc) {
 default:

  return rc;
  break;
 case 0:

  break;
 }
 restore_csa(next, spu);

 return 0;
}
