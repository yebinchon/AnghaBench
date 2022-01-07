
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ace_device {scalar_t__ baseaddr; } ;


 int out_be16 (scalar_t__,int ) ;

__attribute__((used)) static void ace_out_be16(struct ace_device *ace, int reg, u16 val)
{
 out_be16(ace->baseaddr + reg, val);
}
