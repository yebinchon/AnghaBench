; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_clk-div6.c_cpg_div6_clock_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_clk-div6.c_cpg_div6_clock_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.div6_clock = type { i32, i64*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @cpg_div6_clock_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpg_div6_clock_set_parent(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.div6_clock*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.div6_clock* @to_div6_clock(%struct.clk_hw* %9)
  store %struct.div6_clock* %10, %struct.div6_clock** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call i64 @clk_hw_get_num_parents(%struct.clk_hw* %12)
  %14 = icmp uge i64 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.div6_clock*, %struct.div6_clock** %6, align 8
  %20 = getelementptr inbounds %struct.div6_clock, %struct.div6_clock* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.div6_clock*, %struct.div6_clock** %6, align 8
  %25 = getelementptr inbounds %struct.div6_clock, %struct.div6_clock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %23, %26
  %28 = xor i32 %27, -1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  %30 = load %struct.div6_clock*, %struct.div6_clock** %6, align 8
  %31 = getelementptr inbounds %struct.div6_clock, %struct.div6_clock* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load %struct.div6_clock*, %struct.div6_clock** %6, align 8
  %37 = getelementptr inbounds %struct.div6_clock, %struct.div6_clock* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @readl(i32 %38)
  %40 = load i64, i64* %8, align 8
  %41 = and i64 %39, %40
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.div6_clock*, %struct.div6_clock** %6, align 8
  %44 = getelementptr inbounds %struct.div6_clock, %struct.div6_clock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = zext i32 %45 to i64
  %47 = shl i64 %42, %46
  %48 = or i64 %41, %47
  %49 = load %struct.div6_clock*, %struct.div6_clock** %6, align 8
  %50 = getelementptr inbounds %struct.div6_clock, %struct.div6_clock* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @writel(i64 %48, i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %18, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.div6_clock* @to_div6_clock(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i64 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
