; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_espfix_64.c_espfix_base_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_espfix_64.c_espfix_base_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESPFIX_STACKS_PER_PAGE = common dso_local global i32 0, align 4
@page_random = common dso_local global i32 0, align 4
@slot_random = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ESPFIX_STACK_SIZE = common dso_local global i64 0, align 8
@ESPFIX_BASE_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @espfix_base_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @espfix_base_addr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @ESPFIX_STACKS_PER_PAGE, align 4
  %8 = udiv i32 %6, %7
  %9 = load i32, i32* @page_random, align 4
  %10 = xor i32 %8, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @slot_random, align 4
  %14 = add i32 %12, %13
  %15 = load i32, i32* @ESPFIX_STACKS_PER_PAGE, align 4
  %16 = urem i32 %14, %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @PAGE_SHIFT, align 8
  %20 = shl i64 %18, %19
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @ESPFIX_STACK_SIZE, align 8
  %23 = mul i64 %21, %22
  %24 = add i64 %20, %23
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = and i64 %25, 65535
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, -65536
  %29 = shl i64 %28, 16
  %30 = or i64 %26, %29
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* @ESPFIX_BASE_ADDR, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  ret i64 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
