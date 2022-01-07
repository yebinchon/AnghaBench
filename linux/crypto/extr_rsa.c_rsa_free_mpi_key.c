
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsa_mpi_key {int * n; int * e; int * d; } ;


 int mpi_free (int *) ;

__attribute__((used)) static void rsa_free_mpi_key(struct rsa_mpi_key *key)
{
 mpi_free(key->d);
 mpi_free(key->e);
 mpi_free(key->n);
 key->d = ((void*)0);
 key->e = ((void*)0);
 key->n = ((void*)0);
}
