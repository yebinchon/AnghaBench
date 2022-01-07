; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_compute_sfb_extent.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_compute_sfb_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @compute_sfb_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compute_sfb_extent(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ule i64 %6, 5
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i64 0, i64* %3, align 8
  br label %42

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = icmp ule i64 %10, 25
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @min_percent(i32 1, i64 %13, i32 1)
  store i64 %14, i64* %3, align 8
  br label %42

15:                                               ; preds = %9
  %16 = load i64, i64* %4, align 8
  %17 = icmp ule i64 %16, 50
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @min_percent(i32 1, i64 %19, i32 1)
  store i64 %20, i64* %3, align 8
  br label %42

21:                                               ; preds = %15
  %22 = load i64, i64* %4, align 8
  %23 = icmp ule i64 %22, 75
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @min_percent(i32 2, i64 %25, i32 2)
  store i64 %26, i64* %3, align 8
  br label %42

27:                                               ; preds = %21
  %28 = load i64, i64* %4, align 8
  %29 = icmp ule i64 %28, 100
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @min_percent(i32 3, i64 %31, i32 3)
  store i64 %32, i64* %3, align 8
  br label %42

33:                                               ; preds = %27
  %34 = load i64, i64* %4, align 8
  %35 = icmp ule i64 %34, 250
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @min_percent(i32 4, i64 %37, i32 4)
  store i64 %38, i64* %3, align 8
  br label %42

39:                                               ; preds = %33
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @min_percent(i32 5, i64 %40, i32 8)
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %39, %36, %30, %24, %18, %12, %8
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i64 @min_percent(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
