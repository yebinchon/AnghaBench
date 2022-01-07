
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buckets; int ** table; } ;
typedef TYPE_1__ hashtable_t ;
typedef int hashchain_t ;


 int abs (int) ;

__attribute__((used)) static hashchain_t *hashtable_get (hashtable_t *H, int hashvalue)
{
  hashvalue = (abs(hashvalue) % H->buckets);
  return (H->table[hashvalue]);
}
