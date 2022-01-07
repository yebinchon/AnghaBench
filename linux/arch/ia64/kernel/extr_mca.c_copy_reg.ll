; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca.c_copy_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca.c_copy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64*, i64*)* @copy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_reg(i64* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %7, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = ptrtoint i64* %15 to i64
  %17 = lshr i64 %16, 3
  %18 = and i64 %17, 63
  store i64 %18, i64* %9, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = ptrtoint i64* %19 to i64
  %21 = lshr i64 %20, 3
  %22 = and i64 %21, 63
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = shl i64 1, %23
  %25 = xor i64 %24, -1
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %27, %25
  store i64 %28, i64* %26, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %9, align 8
  %31 = lshr i64 %29, %30
  %32 = and i64 %31, 1
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = shl i64 %33, %34
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %37, %35
  store i64 %38, i64* %36, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
