; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh2a/extr_fpu.c_rshift64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh2a/extr_fpu.c_rshift64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32)* @rshift64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rshift64(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp sge i32 %8, 64
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sub nsw i32 %12, 64
  %14 = zext i32 %13 to i64
  %15 = lshr i64 %11, %14
  store i64 %15, i64* %4, align 8
  br label %27

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 64, %18
  %20 = zext i32 %19 to i64
  %21 = shl i64 %17, %20
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = lshr i64 %22, %24
  %26 = or i64 %21, %25
  store i64 %26, i64* %4, align 8
  br label %27

27:                                               ; preds = %16, %10
  %28 = load i64, i64* %4, align 8
  ret i64 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
