
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_gang {int kref; } ;


 int kref_get (int *) ;

struct spu_gang *get_spu_gang(struct spu_gang *gang)
{
 kref_get(&gang->kref);
 return gang;
}
