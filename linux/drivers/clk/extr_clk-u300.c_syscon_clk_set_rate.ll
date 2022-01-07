; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_syscon_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_syscon_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_syscon = type { i64 }

@U300_SYSCON_SBCER_CPU_CLK_EN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@U300_SYSCON_CCR_CLKING_PERFORMANCE_LOW_POWER = common dso_local global i32 0, align 4
@U300_SYSCON_CCR_CLKING_PERFORMANCE_INTERMEDIATE = common dso_local global i32 0, align 4
@U300_SYSCON_CCR_CLKING_PERFORMANCE_HIGH = common dso_local global i32 0, align 4
@U300_SYSCON_CCR_CLKING_PERFORMANCE_BEST = common dso_local global i32 0, align 4
@syscon_vbase = common dso_local global i64 0, align 8
@U300_SYSCON_CCR = common dso_local global i64 0, align 8
@U300_SYSCON_CCR_CLKING_PERFORMANCE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @syscon_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscon_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_syscon*, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.clk_syscon* @to_syscon(%struct.clk_hw* %10)
  store %struct.clk_syscon* %11, %struct.clk_syscon** %8, align 8
  %12 = load %struct.clk_syscon*, %struct.clk_syscon** %8, align 8
  %13 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @U300_SYSCON_SBCER_CPU_CLK_EN, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %48

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  switch i64 %21, label %30 [
    i64 13000000, label %22
    i64 52000000, label %24
    i64 104000000, label %26
    i64 208000000, label %28
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @U300_SYSCON_CCR_CLKING_PERFORMANCE_LOW_POWER, align 4
  store i32 %23, i32* %9, align 4
  br label %33

24:                                               ; preds = %20
  %25 = load i32, i32* @U300_SYSCON_CCR_CLKING_PERFORMANCE_INTERMEDIATE, align 4
  store i32 %25, i32* %9, align 4
  br label %33

26:                                               ; preds = %20
  %27 = load i32, i32* @U300_SYSCON_CCR_CLKING_PERFORMANCE_HIGH, align 4
  store i32 %27, i32* %9, align 4
  br label %33

28:                                               ; preds = %20
  %29 = load i32, i32* @U300_SYSCON_CCR_CLKING_PERFORMANCE_BEST, align 4
  store i32 %29, i32* %9, align 4
  br label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %48

33:                                               ; preds = %28, %26, %24, %22
  %34 = load i64, i64* @syscon_vbase, align 8
  %35 = load i64, i64* @U300_SYSCON_CCR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readw(i64 %36)
  %38 = load i32, i32* @U300_SYSCON_CCR_CLKING_PERFORMANCE_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i64, i64* @syscon_vbase, align 8
  %45 = load i64, i64* @U300_SYSCON_CCR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writew(i32 %43, i64 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %33, %30, %17
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.clk_syscon* @to_syscon(%struct.clk_hw*) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
