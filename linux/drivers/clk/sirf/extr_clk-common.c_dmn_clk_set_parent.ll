; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_dmn_clk_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_dmn_clk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_dmn = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"io\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @dmn_clk_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmn_clk_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_dmn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.clk_dmn* @to_dmnclk(%struct.clk_hw* %9)
  store %struct.clk_dmn* %10, %struct.clk_dmn** %6, align 8
  %11 = load %struct.clk_dmn*, %struct.clk_dmn** %6, align 8
  %12 = getelementptr inbounds %struct.clk_dmn, %struct.clk_dmn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clkc_readl(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %16 = call i8* @clk_hw_get_name(%struct.clk_hw* %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %2
  %24 = call i32 @BIT(i32 3)
  %25 = sub nsw i32 %24, 1
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.clk_dmn*, %struct.clk_dmn** %6, align 8
  %33 = getelementptr inbounds %struct.clk_dmn, %struct.clk_dmn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clkc_writel(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %44, %23
  %37 = load %struct.clk_dmn*, %struct.clk_dmn** %6, align 8
  %38 = getelementptr inbounds %struct.clk_dmn, %struct.clk_dmn* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clkc_readl(i32 %39)
  %41 = call i32 @BIT(i32 3)
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 (...) @cpu_relax()
  br label %36

46:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.clk_dmn* @to_dmnclk(%struct.clk_hw*) #1

declare dso_local i32 @clkc_readl(i32) #1

declare dso_local i8* @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @clkc_writel(i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
