
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_gang {int kref; } ;


 int destroy_spu_gang ;
 int kref_put (int *,int *) ;

int put_spu_gang(struct spu_gang *gang)
{
 return kref_put(&gang->kref, &destroy_spu_gang);
}
