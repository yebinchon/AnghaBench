; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_wait_for_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_wait_for_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_alpha_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s failed to %s!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_alpha_pll*, i32, i32, i8*)* @wait_for_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_pll(%struct.clk_alpha_pll* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_alpha_pll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.clk_alpha_pll* %0, %struct.clk_alpha_pll** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %6, align 8
  %15 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i8* @clk_hw_get_name(i32* %16)
  store i8* %17, i8** %13, align 8
  %18 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %6, align 8
  %19 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %6, align 8
  %23 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %22)
  %24 = call i32 @regmap_read(i32 %21, i32 %23, i32* %10)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %5, align 4
  br label %73

29:                                               ; preds = %4
  store i32 100, i32* %11, align 4
  br label %30

30:                                               ; preds = %64, %29
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %30
  %34 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %6, align 8
  %35 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %6, align 8
  %39 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %38)
  %40 = call i32 @regmap_read(i32 %37, i32 %39, i32* %10)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %73

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %73

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %73

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61
  %63 = call i32 @udelay(i32 1)
  br label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %11, align 4
  br label %30

67:                                               ; preds = %30
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %68, i8* %69)
  %71 = load i32, i32* @ETIMEDOUT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %67, %60, %53, %43, %27
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i8* @clk_hw_get_name(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PLL_MODE(%struct.clk_alpha_pll*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @WARN(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
