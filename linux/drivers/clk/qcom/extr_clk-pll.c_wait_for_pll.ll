; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_wait_for_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_wait_for_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_pll = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"%s didn't enable after voting for it!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_pll*)* @wait_for_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_pll(%struct.clk_pll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_pll*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.clk_pll* %0, %struct.clk_pll** %3, align 8
  %8 = load %struct.clk_pll*, %struct.clk_pll** %3, align 8
  %9 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i8* @clk_hw_get_name(i32* %10)
  store i8* %11, i8** %7, align 8
  store i32 200, i32* %5, align 4
  br label %12

12:                                               ; preds = %39, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load %struct.clk_pll*, %struct.clk_pll** %3, align 8
  %17 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.clk_pll*, %struct.clk_pll** %3, align 8
  %21 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regmap_read(i32 %19, i32 %22, i32* %4)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %47

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.clk_pll*, %struct.clk_pll** %3, align 8
  %31 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = and i32 %29, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %47

37:                                               ; preds = %28
  %38 = call i32 @udelay(i32 1)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %5, align 4
  br label %12

42:                                               ; preds = %12
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %36, %26
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i8* @clk_hw_get_name(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @WARN(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
