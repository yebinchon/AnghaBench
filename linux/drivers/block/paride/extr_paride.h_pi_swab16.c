
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 pi_swab16( char *b, int k)

{ union { u16 u; char t[2]; } r;

 r.t[0]=b[2*k+1]; r.t[1]=b[2*k];
        return r.u;
}
