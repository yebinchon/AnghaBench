; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hw_breakpoint.c_decode_dr7.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hw_breakpoint.c_decode_dr7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DR_CONTROL_SHIFT = common dso_local global i32 0, align 4
@DR_CONTROL_SIZE = common dso_local global i32 0, align 4
@DR_ENABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_dr7(i64 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* @DR_CONTROL_SHIFT, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @DR_CONTROL_SIZE, align 4
  %14 = mul nsw i32 %12, %13
  %15 = add nsw i32 %11, %14
  %16 = zext i32 %15 to i64
  %17 = lshr i64 %10, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, 12
  %21 = or i32 %20, 64
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 3
  %25 = or i32 %24, 128
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @DR_ENABLE_SIZE, align 4
  %30 = mul nsw i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = lshr i64 %27, %31
  %33 = and i64 %32, 3
  %34 = trunc i64 %33 to i32
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
