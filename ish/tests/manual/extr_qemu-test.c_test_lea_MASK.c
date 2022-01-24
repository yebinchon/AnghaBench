#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 long FUNC3 (int) ; 

void FUNC4(void)
{
    long eax, ebx, ecx, edx, esi, edi, res;
    eax = FUNC3(0x0001);
    ebx = FUNC3(0x0002);
    ecx = FUNC3(0x0004);
    edx = FUNC3(0x0008);
    esi = FUNC3(0x0010);
    edi = FUNC3(0x0020);

    FUNC0("0x4000");

    FUNC0("(%%eax)");
    FUNC0("(%%ebx)");
    FUNC0("(%%ecx)");
    FUNC0("(%%edx)");
    FUNC0("(%%esi)");
    FUNC0("(%%edi)");

    FUNC0("0x40(%%eax)");
    FUNC0("0x40(%%ebx)");
    FUNC0("0x40(%%ecx)");
    FUNC0("0x40(%%edx)");
    FUNC0("0x40(%%esi)");
    FUNC0("0x40(%%edi)");

    FUNC0("0x4000(%%eax)");
    FUNC0("0x4000(%%ebx)");
    FUNC0("0x4000(%%ecx)");
    FUNC0("0x4000(%%edx)");
    FUNC0("0x4000(%%esi)");
    FUNC0("0x4000(%%edi)");

    FUNC0("(%%eax, %%ecx)");
    FUNC0("(%%ebx, %%edx)");
    FUNC0("(%%ecx, %%ecx)");
    FUNC0("(%%edx, %%ecx)");
    FUNC0("(%%esi, %%ecx)");
    FUNC0("(%%edi, %%ecx)");

    FUNC0("0x40(%%eax, %%ecx)");
    FUNC0("0x4000(%%ebx, %%edx)");

    FUNC0("(%%ecx, %%ecx, 2)");
    FUNC0("(%%edx, %%ecx, 4)");
    FUNC0("(%%esi, %%ecx, 8)");

    FUNC0("(,%%eax, 2)");
    FUNC0("(,%%ebx, 4)");
    FUNC0("(,%%ecx, 8)");

    FUNC0("0x40(,%%eax, 2)");
    FUNC0("0x40(,%%ebx, 4)");
    FUNC0("0x40(,%%ecx, 8)");


    FUNC0("-10(%%ecx, %%ecx, 2)");
    FUNC0("-10(%%edx, %%ecx, 4)");
    FUNC0("-10(%%esi, %%ecx, 8)");

    FUNC0("0x4000(%%ecx, %%ecx, 2)");
    FUNC0("0x4000(%%edx, %%ecx, 4)");
    FUNC0("0x4000(%%esi, %%ecx, 8)");

#if defined(__x86_64__)
    FUNC2("0x4000");
    FUNC2("0x4000(%%rip)");

    FUNC2("(%%rax)");
    FUNC2("(%%rbx)");
    FUNC2("(%%rcx)");
    FUNC2("(%%rdx)");
    FUNC2("(%%rsi)");
    FUNC2("(%%rdi)");

    FUNC2("0x40(%%rax)");
    FUNC2("0x40(%%rbx)");
    FUNC2("0x40(%%rcx)");
    FUNC2("0x40(%%rdx)");
    FUNC2("0x40(%%rsi)");
    FUNC2("0x40(%%rdi)");

    FUNC2("0x4000(%%rax)");
    FUNC2("0x4000(%%rbx)");
    FUNC2("0x4000(%%rcx)");
    FUNC2("0x4000(%%rdx)");
    FUNC2("0x4000(%%rsi)");
    FUNC2("0x4000(%%rdi)");

    FUNC2("(%%rax, %%rcx)");
    FUNC2("(%%rbx, %%rdx)");
    FUNC2("(%%rcx, %%rcx)");
    FUNC2("(%%rdx, %%rcx)");
    FUNC2("(%%rsi, %%rcx)");
    FUNC2("(%%rdi, %%rcx)");

    FUNC2("0x40(%%rax, %%rcx)");
    FUNC2("0x4000(%%rbx, %%rdx)");

    FUNC2("(%%rcx, %%rcx, 2)");
    FUNC2("(%%rdx, %%rcx, 4)");
    FUNC2("(%%rsi, %%rcx, 8)");

    FUNC2("(,%%rax, 2)");
    FUNC2("(,%%rbx, 4)");
    FUNC2("(,%%rcx, 8)");

    FUNC2("0x40(,%%rax, 2)");
    FUNC2("0x40(,%%rbx, 4)");
    FUNC2("0x40(,%%rcx, 8)");


    FUNC2("-10(%%rcx, %%rcx, 2)");
    FUNC2("-10(%%rdx, %%rcx, 4)");
    FUNC2("-10(%%rsi, %%rcx, 8)");

    FUNC2("0x4000(%%rcx, %%rcx, 2)");
    FUNC2("0x4000(%%rdx, %%rcx, 4)");
    FUNC2("0x4000(%%rsi, %%rcx, 8)");
#elif 0
    /* limited 16 bit addressing test */
    TEST_LEA16("0x4000");
    TEST_LEA16("(%%bx)");
    TEST_LEA16("(%%si)");
    TEST_LEA16("(%%di)");
    TEST_LEA16("0x40(%%bx)");
    TEST_LEA16("0x40(%%si)");
    TEST_LEA16("0x40(%%di)");
    TEST_LEA16("0x4000(%%bx)");
    TEST_LEA16("0x4000(%%si)");
    TEST_LEA16("(%%bx,%%si)");
    TEST_LEA16("(%%bx,%%di)");
    TEST_LEA16("0x40(%%bx,%%si)");
    TEST_LEA16("0x40(%%bx,%%di)");
    TEST_LEA16("0x4000(%%bx,%%si)");
    TEST_LEA16("0x4000(%%bx,%%di)");
#endif
}