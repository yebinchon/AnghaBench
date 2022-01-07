; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_clk-div6.c_cpg_div6_clock_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_clk-div6.c_cpg_div6_clock_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.div6_clock = type { i32, i32 }

@CPG_DIV6_DIV_MASK = common dso_local global i32 0, align 4
@CPG_DIV6_CKSTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @cpg_div6_clock_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpg_div6_clock_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.div6_clock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.div6_clock* @to_div6_clock(%struct.clk_hw* %10)
  store %struct.div6_clock* %11, %struct.div6_clock** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @cpg_div6_clock_calc_div(i64 %12, i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.div6_clock*, %struct.div6_clock** %7, align 8
  %17 = getelementptr inbounds %struct.div6_clock, %struct.div6_clock* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.div6_clock*, %struct.div6_clock** %7, align 8
  %19 = getelementptr inbounds %struct.div6_clock, %struct.div6_clock* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @readl(i32 %20)
  %22 = load i32, i32* @CPG_DIV6_DIV_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @CPG_DIV6_CKSTP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.div6_clock*, %struct.div6_clock** %7, align 8
  %32 = getelementptr inbounds %struct.div6_clock, %struct.div6_clock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %33, 1
  %35 = call i32 @CPG_DIV6_DIV(i32 %34)
  %36 = or i32 %30, %35
  %37 = load %struct.div6_clock*, %struct.div6_clock** %7, align 8
  %38 = getelementptr inbounds %struct.div6_clock, %struct.div6_clock* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @writel(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %29, %3
  ret i32 0
}

declare dso_local %struct.div6_clock* @to_div6_clock(%struct.clk_hw*) #1

declare dso_local i32 @cpg_div6_clock_calc_div(i64, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @CPG_DIV6_DIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
