; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_amd.c_amd_get_mtrr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_amd.c_amd_get_mtrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_K6_UWCCR = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MTRR_TYPE_UNCACHABLE = common dso_local global i64 0, align 8
@MTRR_TYPE_WRCOMB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i64*, i64*)* @amd_get_mtrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_get_mtrr(i32 %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i32, i32* @MSR_K6_UWCCR, align 4
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %10, align 8
  %14 = call i32 @rdmsr(i32 %11, i64 %12, i64 %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i64, i64* %10, align 8
  store i64 %18, i64* %9, align 8
  br label %19

19:                                               ; preds = %17, %4
  %20 = load i64, i64* %9, align 8
  %21 = and i64 %20, 4294836224
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = lshr i64 %21, %22
  %24 = load i64*, i64** %6, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i64*, i64** %8, align 8
  store i64 0, i64* %25, align 8
  %26 = load i64, i64* %9, align 8
  %27 = and i64 %26, 1
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i64, i64* @MTRR_TYPE_UNCACHABLE, align 8
  %31 = load i64*, i64** %8, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %19
  %33 = load i64, i64* %9, align 8
  %34 = and i64 %33, 2
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i64, i64* @MTRR_TYPE_WRCOMB, align 8
  %38 = load i64*, i64** %8, align 8
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i64, i64* %9, align 8
  %41 = and i64 %40, 3
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i64*, i64** %7, align 8
  store i64 0, i64* %44, align 8
  br label %55

45:                                               ; preds = %39
  %46 = load i64, i64* %9, align 8
  %47 = xor i64 %46, -1
  %48 = and i64 %47, 131068
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 4
  %51 = load i64, i64* @PAGE_SHIFT, align 8
  %52 = sub i64 15, %51
  %53 = shl i64 %50, %52
  %54 = load i64*, i64** %7, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %45, %43
  ret void
}

declare dso_local i32 @rdmsr(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
