
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_fe ;


 int CHECK (int ) ;
 int check_fe_equal (int *,int *) ;
 int check_fe_inverse (int *,int *) ;
 int count ;
 int random_fe_non_zero (int *) ;
 int secp256k1_fe_inv_var (int *,int *) ;

void run_field_inv_var(void) {
    secp256k1_fe x, xi, xii;
    int i;
    for (i = 0; i < 10*count; i++) {
        random_fe_non_zero(&x);
        secp256k1_fe_inv_var(&xi, &x);
        CHECK(check_fe_inverse(&x, &xi));
        secp256k1_fe_inv_var(&xii, &xi);
        CHECK(check_fe_equal(&x, &xii));
    }
}
