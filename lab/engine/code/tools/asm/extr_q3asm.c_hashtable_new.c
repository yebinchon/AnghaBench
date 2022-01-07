
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashtable_t ;


 int hashtable_init (int *,int) ;
 int * malloc (int) ;

__attribute__((used)) static hashtable_t *hashtable_new (int buckets)
{
  hashtable_t *H;

  H = malloc(sizeof(hashtable_t));
  hashtable_init(H, buckets);
  return H;
}
