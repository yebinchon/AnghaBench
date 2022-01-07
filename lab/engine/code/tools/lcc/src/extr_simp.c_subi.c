
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addi (long,long,long,long,int) ;

__attribute__((used)) static int subi(long x, long y, long min, long max, int needconst) {
 return addi(x, -y, min, max, needconst);
}
