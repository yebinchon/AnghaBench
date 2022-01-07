; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_mclk_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_mclk_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@syscon_vbase = common dso_local global i64 0, align 8
@U300_SYSCON_MMF0R = common dso_local global i64 0, align 8
@U300_SYSCON_MMF0R_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @mclk_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mclk_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 (...) @syscon_get_perf()
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %30 [
    i32 128, label %10
    i32 129, label %11
    i32 130, label %11
    i32 131, label %11
    i32 132, label %11
  ]

10:                                               ; preds = %2
  store i64 13000000, i64* %3, align 8
  br label %33

11:                                               ; preds = %2, %2, %2, %2
  %12 = load i64, i64* @syscon_vbase, align 8
  %13 = load i64, i64* @U300_SYSCON_MMF0R, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readw(i64 %14)
  %16 = load i32, i32* @U300_SYSCON_MMF0R_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %28 [
    i32 84, label %19
    i32 68, label %20
    i32 67, label %21
    i32 51, label %22
    i32 50, label %23
    i32 34, label %24
    i32 33, label %25
    i32 17, label %26
    i32 0, label %27
  ]

19:                                               ; preds = %11
  store i64 18900000, i64* %3, align 8
  br label %33

20:                                               ; preds = %11
  store i64 20800000, i64* %3, align 8
  br label %33

21:                                               ; preds = %11
  store i64 23100000, i64* %3, align 8
  br label %33

22:                                               ; preds = %11
  store i64 26000000, i64* %3, align 8
  br label %33

23:                                               ; preds = %11
  store i64 29700000, i64* %3, align 8
  br label %33

24:                                               ; preds = %11
  store i64 34700000, i64* %3, align 8
  br label %33

25:                                               ; preds = %11
  store i64 41600000, i64* %3, align 8
  br label %33

26:                                               ; preds = %11
  store i64 52000000, i64* %3, align 8
  br label %33

27:                                               ; preds = %11
  store i64 104000000, i64* %3, align 8
  br label %33

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %2, %29
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %31, %27, %26, %25, %24, %23, %22, %21, %20, %19, %10
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local i32 @syscon_get_perf(...) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
