
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int die (char*) ;
 scalar_t__ signed_add_overflows (int ,int ) ;

__attribute__((used)) static void check_preimage_overflow(off_t a, off_t b)
{
 if (signed_add_overflows(a, b))
  die("blob too large for current definition of off_t");
}
