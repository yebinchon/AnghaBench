
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int le64_to_cpu (int ) ;

__attribute__((used)) static uint64_t elf64_to_cpu(uint64_t val)
{
        return le64_to_cpu(val);
}
