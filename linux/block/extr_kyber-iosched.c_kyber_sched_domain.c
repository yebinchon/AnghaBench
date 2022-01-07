
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int KYBER_DISCARD ;
 unsigned int KYBER_OTHER ;
 unsigned int KYBER_READ ;
 unsigned int KYBER_WRITE ;

 unsigned int REQ_OP_MASK ;



__attribute__((used)) static unsigned int kyber_sched_domain(unsigned int op)
{
 switch (op & REQ_OP_MASK) {
 case 129:
  return KYBER_READ;
 case 128:
  return KYBER_WRITE;
 case 130:
  return KYBER_DISCARD;
 default:
  return KYBER_OTHER;
 }
}
