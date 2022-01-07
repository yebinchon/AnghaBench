
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct address {scalar_t__ selector; } ;


 int EXCEPTION (int) ;
 int EX_INTERNAL ;
 int FPU_info ;
 scalar_t__ PREFIX_SS_ ;
 int SIGSEGV ;
 scalar_t__ VM86_REG_ (scalar_t__) ;
 int math_abort (int ,int ) ;

__attribute__((used)) static unsigned long vm86_segment(u_char segment, struct address *addr)
{
 segment--;






 addr->selector = VM86_REG_(segment);
 return (unsigned long)VM86_REG_(segment) << 4;
}
