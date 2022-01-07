; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tsc.c_tsc_read_refs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tsc.c_tsc_read_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tsc_khz = common dso_local global i32 0, align 4
@TSC_DEFAULT_THRESHOLD = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@HPET_COUNTER = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32)* @tsc_read_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tsc_read_refs(i64* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @tsc_khz, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @tsc_khz, align 4
  %14 = ashr i32 %13, 5
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @TSC_DEFAULT_THRESHOLD, align 4
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %14, %12 ], [ %16, %15 ]
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %46, %17
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @MAX_RETRIES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %20
  %25 = call i64 (...) @get_cycles()
  store i64 %25, i64* %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* @HPET_COUNTER, align 4
  %30 = call i32 @hpet_readl(i32 %29)
  %31 = zext i32 %30 to i64
  %32 = load i64*, i64** %4, align 8
  store i64 %31, i64* %32, align 8
  br label %36

33:                                               ; preds = %24
  %34 = call i64 (...) @acpi_pm_read_early()
  %35 = load i64*, i64** %4, align 8
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = call i64 (...) @get_cycles()
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = sub nsw i64 %38, %39
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %3, align 8
  br label %51

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %20

49:                                               ; preds = %20
  %50 = load i64, i64* @ULLONG_MAX, align 8
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %49, %43
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @hpet_readl(i32) #1

declare dso_local i64 @acpi_pm_read_early(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
