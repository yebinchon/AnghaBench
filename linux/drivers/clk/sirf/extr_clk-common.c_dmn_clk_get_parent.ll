; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_dmn_clk_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_dmn_clk_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_dmn = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"io\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @dmn_clk_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmn_clk_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_dmn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_dmn* @to_dmnclk(%struct.clk_hw* %7)
  store %struct.clk_dmn* %8, %struct.clk_dmn** %4, align 8
  %9 = load %struct.clk_dmn*, %struct.clk_dmn** %4, align 8
  %10 = getelementptr inbounds %struct.clk_dmn, %struct.clk_dmn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clkc_readl(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %14 = call i8* @clk_hw_get_name(%struct.clk_hw* %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @BIT(i32 3)
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %20, %22
  %24 = icmp sgt i32 %23, 4
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @BIT(i32 3)
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %19, %18
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.clk_dmn* @to_dmnclk(%struct.clk_hw*) #1

declare dso_local i32 @clkc_readl(i32) #1

declare dso_local i8* @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
