; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_syscon_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_syscon_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_syscon = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @syscon_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @syscon_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_syscon*, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %9 = call %struct.clk_syscon* @to_syscon(%struct.clk_hw* %8)
  store %struct.clk_syscon* %9, %struct.clk_syscon** %6, align 8
  %10 = call i32 (...) @syscon_get_perf()
  store i32 %10, i32* %7, align 4
  %11 = load %struct.clk_syscon*, %struct.clk_syscon** %6, align 8
  %12 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %37 [
    i32 135, label %14
    i32 134, label %14
    i32 133, label %14
    i32 132, label %14
    i32 129, label %14
    i32 137, label %19
    i32 131, label %19
    i32 128, label %19
    i32 130, label %25
    i32 136, label %25
    i32 138, label %30
  ]

14:                                               ; preds = %2, %2, %2, %2, %2
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %17 [
    i32 139, label %16
    i32 140, label %16
  ]

16:                                               ; preds = %14, %14
  store i64 13000000, i64* %3, align 8
  br label %39

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  store i64 %18, i64* %3, align 8
  br label %39

19:                                               ; preds = %2, %2, %2
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %23 [
    i32 139, label %21
    i32 140, label %21
    i32 141, label %22
  ]

21:                                               ; preds = %19, %19
  store i64 6500000, i64* %3, align 8
  br label %39

22:                                               ; preds = %19
  store i64 26000000, i64* %3, align 8
  br label %39

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %3, align 8
  br label %39

25:                                               ; preds = %2, %2
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %29 [
    i32 139, label %27
    i32 140, label %27
    i32 141, label %28
  ]

27:                                               ; preds = %25, %25
  store i64 13000000, i64* %3, align 8
  br label %39

28:                                               ; preds = %25
  store i64 52000000, i64* %3, align 8
  br label %39

29:                                               ; preds = %25
  store i64 104000000, i64* %3, align 8
  br label %39

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %35 [
    i32 139, label %32
    i32 140, label %32
    i32 141, label %33
    i32 142, label %34
  ]

32:                                               ; preds = %30, %30
  store i64 13000000, i64* %3, align 8
  br label %39

33:                                               ; preds = %30
  store i64 52000000, i64* %3, align 8
  br label %39

34:                                               ; preds = %30
  store i64 104000000, i64* %3, align 8
  br label %39

35:                                               ; preds = %30
  %36 = load i64, i64* %5, align 8
  store i64 %36, i64* %3, align 8
  br label %39

37:                                               ; preds = %2
  %38 = load i64, i64* %5, align 8
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %37, %35, %34, %33, %32, %29, %28, %27, %23, %22, %21, %17, %16
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local %struct.clk_syscon* @to_syscon(%struct.clk_hw*) #1

declare dso_local i32 @syscon_get_perf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
