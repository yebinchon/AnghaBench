
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsa_mpi_key {int n; int d; } ;
typedef int MPI ;


 int EINVAL ;
 scalar_t__ mpi_cmp (int ,int ) ;
 scalar_t__ mpi_cmp_ui (int ,int ) ;
 int mpi_powm (int ,int ,int ,int ) ;

__attribute__((used)) static int _rsa_dec(const struct rsa_mpi_key *key, MPI m, MPI c)
{

 if (mpi_cmp_ui(c, 0) < 0 || mpi_cmp(c, key->n) >= 0)
  return -EINVAL;


 return mpi_powm(m, c, key->d, key->n);
}
