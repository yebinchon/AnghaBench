
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BFQ_WEIGHT_CONVERSION_COEFF ;
 int IOPRIO_BE_NR ;

unsigned short bfq_ioprio_to_weight(int ioprio)
{
 return (IOPRIO_BE_NR - ioprio) * BFQ_WEIGHT_CONVERSION_COEFF;
}
