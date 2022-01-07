
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpu_priv {scalar_t__ mapbase1; } ;


 int TCFV ;
 scalar_t__ TSR ;
 int ioread8 (scalar_t__) ;
 unsigned long read_tcnt32 (struct tpu_priv*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tpu_get_counter(struct tpu_priv *p, unsigned long long *val)
{
 unsigned long v1, v2, v3;
 int o1, o2;

 o1 = ioread8(p->mapbase1 + TSR) & TCFV;


 do {
  o2 = o1;
  v1 = read_tcnt32(p);
  v2 = read_tcnt32(p);
  v3 = read_tcnt32(p);
  o1 = ioread8(p->mapbase1 + TSR) & TCFV;
 } while (unlikely((o1 != o2) || (v1 > v2 && v1 < v3)
     || (v2 > v3 && v2 < v1) || (v3 > v1 && v3 < v2)));

 *val = v2;
 return o1;
}
