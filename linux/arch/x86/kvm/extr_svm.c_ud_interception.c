
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int vcpu; } ;


 int handle_ud (int *) ;

__attribute__((used)) static int ud_interception(struct vcpu_svm *svm)
{
 return handle_ud(&svm->vcpu);
}
