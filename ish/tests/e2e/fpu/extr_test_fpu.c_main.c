
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,double) ;

int main(void) {
    double a = 0.12;
    double b = 16.0;
    printf("%.2f\n", a + b);
    printf("%.2f\n", a - b);
    printf("%.2f\n", a * b);
    printf("%.2f\n", a / b);
    printf("%.2f\n", b / a);
    printf("%.2f\n", a + a / b + b);
    printf("%.2f\n", (a + a) / (b + b));
    return 0;
}
