; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scpi.c_scpi_dvfs_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scpi.c_scpi_dvfs_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.scpi_clk = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.scpi_opp* }
%struct.scpi_opp = type { i64 }
%struct.TYPE_3__ = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @scpi_dvfs_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scpi_dvfs_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.scpi_clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scpi_opp*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.scpi_clk* @to_scpi_clk(%struct.clk_hw* %9)
  store %struct.scpi_clk* %10, %struct.scpi_clk** %6, align 8
  %11 = load %struct.scpi_clk*, %struct.scpi_clk** %6, align 8
  %12 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load %struct.scpi_clk*, %struct.scpi_clk** %6, align 8
  %17 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %15(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %35

23:                                               ; preds = %2
  %24 = load %struct.scpi_clk*, %struct.scpi_clk** %6, align 8
  %25 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.scpi_opp*, %struct.scpi_opp** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %28, i64 %30
  store %struct.scpi_opp* %31, %struct.scpi_opp** %8, align 8
  %32 = load %struct.scpi_opp*, %struct.scpi_opp** %8, align 8
  %33 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %23, %22
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local %struct.scpi_clk* @to_scpi_clk(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
