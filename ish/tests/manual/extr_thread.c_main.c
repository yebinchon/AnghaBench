
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int printf (char*) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_detach (int ) ;
 int thread ;

int main() {
    pthread_t t;
    printf("main before create\n");
    pthread_create(&t, ((void*)0), thread, ((void*)0));
    pthread_detach(t);
    printf("main after create\n");
}
