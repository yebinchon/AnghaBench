
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const fe25519 ;


 int fe25519_abs (int const,int const) ;
 int fe25519_add (int const,int const,int const) ;
 int fe25519_cmov (int const,int const,int) ;
 int fe25519_iszero (int const) ;
 int fe25519_mul (int const,int const,int const) ;
 int fe25519_pow22523 (int const,int const) ;
 int fe25519_sq (int const,int const) ;
 int fe25519_sub (int const,int const,int const) ;
 int const sqrtm1 ;

__attribute__((used)) static int
ristretto255_sqrt_ratio_m1(fe25519 x, const fe25519 u, const fe25519 v)
{
    fe25519 v3;
    fe25519 vxx;
    fe25519 m_root_check, p_root_check, f_root_check;
    fe25519 x_sqrtm1;
    int has_m_root, has_p_root, has_f_root;

    fe25519_sq(v3, v);
    fe25519_mul(v3, v3, v);
    fe25519_sq(x, v3);
    fe25519_mul(x, x, v);
    fe25519_mul(x, x, u);

    fe25519_pow22523(x, x);
    fe25519_mul(x, x, v3);
    fe25519_mul(x, x, u);

    fe25519_sq(vxx, x);
    fe25519_mul(vxx, vxx, v);
    fe25519_sub(m_root_check, vxx, u);
    fe25519_add(p_root_check, vxx, u);
    fe25519_mul(f_root_check, u, sqrtm1);
    fe25519_add(f_root_check, vxx, f_root_check);
    has_m_root = fe25519_iszero(m_root_check);
    has_p_root = fe25519_iszero(p_root_check);
    has_f_root = fe25519_iszero(f_root_check);
    fe25519_mul(x_sqrtm1, x, sqrtm1);

    fe25519_cmov(x, x_sqrtm1, has_p_root | has_f_root);
    fe25519_abs(x, x);

    return has_m_root | has_p_root;
}
