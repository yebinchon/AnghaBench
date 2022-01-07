
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ___tlbie (unsigned long,int,int,int) ;
 int trace_tlbie (int ,int ,unsigned long,int ,int ,int ,int ) ;

__attribute__((used)) static inline void __tlbie(unsigned long vpn, int psize, int apsize, int ssize)
{
 unsigned long rb;

 rb = ___tlbie(vpn, psize, apsize, ssize);
 trace_tlbie(0, 0, rb, 0, 0, 0, 0);
}
