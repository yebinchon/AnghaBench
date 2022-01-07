
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gva_t ;
typedef int gpa_t ;



__attribute__((used)) static gpa_t kvm_vz_gva_to_gpa_cb(gva_t gva)
{

 return gva;
}
