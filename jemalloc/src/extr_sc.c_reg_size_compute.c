
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZU (int) ;

__attribute__((used)) static size_t
reg_size_compute(int lg_base, int lg_delta, int ndelta) {
 return (ZU(1) << lg_base) + (ZU(ndelta) << lg_delta);
}
