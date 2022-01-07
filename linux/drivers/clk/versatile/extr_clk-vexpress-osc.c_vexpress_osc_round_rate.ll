; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-vexpress-osc.c_vexpress_osc_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-vexpress-osc.c_vexpress_osc_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.vexpress_osc = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @vexpress_osc_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vexpress_osc_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.vexpress_osc*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %9 = call %struct.vexpress_osc* @to_vexpress_osc(%struct.clk_hw* %8)
  store %struct.vexpress_osc* %9, %struct.vexpress_osc** %7, align 8
  %10 = load %struct.vexpress_osc*, %struct.vexpress_osc** %7, align 8
  %11 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.vexpress_osc*, %struct.vexpress_osc** %7, align 8
  %17 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.vexpress_osc*, %struct.vexpress_osc** %7, align 8
  %22 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %20, %14, %3
  %25 = load %struct.vexpress_osc*, %struct.vexpress_osc** %7, align 8
  %26 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.vexpress_osc*, %struct.vexpress_osc** %7, align 8
  %32 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.vexpress_osc*, %struct.vexpress_osc** %7, align 8
  %37 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %35, %29, %24
  %40 = load i64, i64* %5, align 8
  ret i64 %40
}

declare dso_local %struct.vexpress_osc* @to_vexpress_osc(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
