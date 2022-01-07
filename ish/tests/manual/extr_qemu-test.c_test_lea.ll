; ModuleID = '/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_lea.c'
source_filename = "/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_lea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"0x4000\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(%%eax)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"(%%ebx)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"(%%ecx)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"(%%edx)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"(%%esi)\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"(%%edi)\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"0x40(%%eax)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"0x40(%%ebx)\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"0x40(%%ecx)\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"0x40(%%edx)\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"0x40(%%esi)\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"0x40(%%edi)\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"0x4000(%%eax)\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"0x4000(%%ebx)\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"0x4000(%%ecx)\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"0x4000(%%edx)\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"0x4000(%%esi)\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"0x4000(%%edi)\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"(%%eax, %%ecx)\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"(%%ebx, %%edx)\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"(%%ecx, %%ecx)\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"(%%edx, %%ecx)\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"(%%esi, %%ecx)\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"(%%edi, %%ecx)\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"0x40(%%eax, %%ecx)\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"0x4000(%%ebx, %%edx)\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"(%%ecx, %%ecx, 2)\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"(%%edx, %%ecx, 4)\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"(%%esi, %%ecx, 8)\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"(,%%eax, 2)\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"(,%%ebx, 4)\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"(,%%ecx, 8)\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"0x40(,%%eax, 2)\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"0x40(,%%ebx, 4)\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"0x40(,%%ecx, 8)\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"-10(%%ecx, %%ecx, 2)\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"-10(%%edx, %%ecx, 4)\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"-10(%%esi, %%ecx, 8)\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"0x4000(%%ecx, %%ecx, 2)\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"0x4000(%%edx, %%ecx, 4)\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"0x4000(%%esi, %%ecx, 8)\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"0x4000(%%rip)\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"(%%rax)\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"(%%rbx)\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"(%%rcx)\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"(%%rdx)\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"(%%rsi)\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"(%%rdi)\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"0x40(%%rax)\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"0x40(%%rbx)\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"0x40(%%rcx)\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"0x40(%%rdx)\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"0x40(%%rsi)\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"0x40(%%rdi)\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"0x4000(%%rax)\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"0x4000(%%rbx)\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"0x4000(%%rcx)\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"0x4000(%%rdx)\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"0x4000(%%rsi)\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"0x4000(%%rdi)\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"(%%rax, %%rcx)\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"(%%rbx, %%rdx)\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"(%%rcx, %%rcx)\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"(%%rdx, %%rcx)\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"(%%rsi, %%rcx)\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"(%%rdi, %%rcx)\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"0x40(%%rax, %%rcx)\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"0x4000(%%rbx, %%rdx)\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"(%%rcx, %%rcx, 2)\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"(%%rdx, %%rcx, 4)\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"(%%rsi, %%rcx, 8)\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"(,%%rax, 2)\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"(,%%rbx, 4)\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"(,%%rcx, 8)\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"0x40(,%%rax, 2)\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"0x40(,%%rbx, 4)\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"0x40(,%%rcx, 8)\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"-10(%%rcx, %%rcx, 2)\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"-10(%%rdx, %%rcx, 4)\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"-10(%%rsi, %%rcx, 8)\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"0x4000(%%rcx, %%rcx, 2)\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"0x4000(%%rdx, %%rcx, 4)\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c"0x4000(%%rsi, %%rcx, 8)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_lea() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = call i64 @i2l(i32 1)
  store i64 %8, i64* %1, align 8
  %9 = call i64 @i2l(i32 2)
  store i64 %9, i64* %2, align 8
  %10 = call i64 @i2l(i32 4)
  store i64 %10, i64* %3, align 8
  %11 = call i64 @i2l(i32 8)
  store i64 %11, i64* %4, align 8
  %12 = call i64 @i2l(i32 16)
  store i64 %12, i64* %5, align 8
  %13 = call i64 @i2l(i32 32)
  store i64 %13, i64* %6, align 8
  %14 = call i32 @TEST_LEA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @TEST_LEA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @TEST_LEA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @TEST_LEA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 @TEST_LEA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %19 = call i32 @TEST_LEA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %20 = call i32 @TEST_LEA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %21 = call i32 @TEST_LEA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %22 = call i32 @TEST_LEA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %23 = call i32 @TEST_LEA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %24 = call i32 @TEST_LEA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %25 = call i32 @TEST_LEA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %26 = call i32 @TEST_LEA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %27 = call i32 @TEST_LEA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %28 = call i32 @TEST_LEA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %29 = call i32 @TEST_LEA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %30 = call i32 @TEST_LEA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %31 = call i32 @TEST_LEA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %32 = call i32 @TEST_LEA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %33 = call i32 @TEST_LEA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %34 = call i32 @TEST_LEA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %35 = call i32 @TEST_LEA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %36 = call i32 @TEST_LEA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %37 = call i32 @TEST_LEA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %38 = call i32 @TEST_LEA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %39 = call i32 @TEST_LEA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %40 = call i32 @TEST_LEA(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0))
  %41 = call i32 @TEST_LEA(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %42 = call i32 @TEST_LEA(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0))
  %43 = call i32 @TEST_LEA(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  %44 = call i32 @TEST_LEA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0))
  %45 = call i32 @TEST_LEA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0))
  %46 = call i32 @TEST_LEA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0))
  %47 = call i32 @TEST_LEA(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0))
  %48 = call i32 @TEST_LEA(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0))
  %49 = call i32 @TEST_LEA(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0))
  %50 = call i32 @TEST_LEA(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0))
  %51 = call i32 @TEST_LEA(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0))
  %52 = call i32 @TEST_LEA(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0))
  %53 = call i32 @TEST_LEA(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0))
  %54 = call i32 @TEST_LEA(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0))
  %55 = call i32 @TEST_LEA(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0))
  %56 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0))
  %58 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0))
  %59 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0))
  %60 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0))
  %61 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0))
  %62 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0))
  %63 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0))
  %64 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0))
  %65 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0))
  %66 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0))
  %67 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0))
  %68 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0))
  %69 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0))
  %70 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i64 0, i64 0))
  %71 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i64 0, i64 0))
  %72 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0))
  %73 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i64 0, i64 0))
  %74 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i64 0, i64 0))
  %75 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0))
  %76 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i64 0, i64 0))
  %77 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0))
  %78 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0))
  %79 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i64 0, i64 0))
  %80 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i64 0, i64 0))
  %81 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i64 0, i64 0))
  %82 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.67, i64 0, i64 0))
  %83 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i64 0, i64 0))
  %84 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i64 0, i64 0))
  %85 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0))
  %86 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i64 0, i64 0))
  %87 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i64 0, i64 0))
  %88 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0))
  %89 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0))
  %90 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i64 0, i64 0))
  %91 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i64 0, i64 0))
  %92 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i64 0, i64 0))
  %93 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0))
  %94 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.79, i64 0, i64 0))
  %95 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i64 0, i64 0))
  %96 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.81, i64 0, i64 0))
  %97 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.82, i64 0, i64 0))
  %98 = call i32 @TEST_LEAQ(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.83, i64 0, i64 0))
  ret void
}

declare dso_local i64 @i2l(i32) #1

declare dso_local i32 @TEST_LEA(i8*) #1

declare dso_local i32 @TEST_LEAQ(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
