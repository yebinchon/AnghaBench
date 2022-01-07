; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_syscon_clk_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_syscon_clk_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_syscon = type { i64 }

@U300_SYSCON_SBCER_CPU_CLK_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @syscon_clk_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @syscon_clk_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_syscon*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %10 = call %struct.clk_syscon* @to_syscon(%struct.clk_hw* %9)
  store %struct.clk_syscon* %10, %struct.clk_syscon** %8, align 8
  %11 = load %struct.clk_syscon*, %struct.clk_syscon** %8, align 8
  %12 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @U300_SYSCON_SBCER_CPU_CLK_EN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %4, align 8
  br label %32

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp ule i64 %20, 13000000
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i64 13000000, i64* %4, align 8
  br label %32

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = icmp ule i64 %24, 52000000
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i64 52000000, i64* %4, align 8
  br label %32

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = icmp ule i64 %28, 104000000
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i64 104000000, i64* %4, align 8
  br label %32

31:                                               ; preds = %27
  store i64 208000000, i64* %4, align 8
  br label %32

32:                                               ; preds = %31, %30, %26, %22, %16
  %33 = load i64, i64* %4, align 8
  ret i64 %33
}

declare dso_local %struct.clk_syscon* @to_syscon(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
