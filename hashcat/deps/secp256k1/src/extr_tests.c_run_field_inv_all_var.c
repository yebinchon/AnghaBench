
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
 int secp256k1_fe_inv_all_var (int *,int *,size_t) ;
 int secp256k1_rand_int (int) ;

void run_field_inv_all_var(void) {
    secp256k1_fe x[16], xi[16], xii[16];
    int i;

    secp256k1_fe_inv_all_var(xi, x, 0);
    for (i = 0; i < count; i++) {
        size_t j;
        size_t len = secp256k1_rand_int(15) + 1;
        for (j = 0; j < len; j++) {
            random_fe_non_zero(&x[j]);
        }
        secp256k1_fe_inv_all_var(xi, x, len);
        for (j = 0; j < len; j++) {
            CHECK(check_fe_inverse(&x[j], &xi[j]));
        }
        secp256k1_fe_inv_all_var(xii, xi, len);
        for (j = 0; j < len; j++) {
            CHECK(check_fe_equal(&x[j], &xii[j]));
        }
    }
}
