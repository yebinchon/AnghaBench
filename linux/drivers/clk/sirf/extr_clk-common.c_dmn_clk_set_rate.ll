; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_dmn_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_dmn_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_dmn = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @dmn_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmn_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_dmn*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %17 = call %struct.clk_dmn* @to_dmnclk(%struct.clk_hw* %16)
  store %struct.clk_dmn* %17, %struct.clk_dmn** %8, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %19 = call i8* @clk_hw_get_name(%struct.clk_hw* %18)
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 3, i32 4
  store i32 %24, i32* %15, align 4
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %6, align 8
  %28 = udiv i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %38, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %15, align 4
  %35 = add i32 %34, 1
  %36 = call i32 @BIT(i32 %35)
  %37 = icmp ugt i32 %33, %36
  br label %38

38:                                               ; preds = %32, %3
  %39 = phi i1 [ true, %3 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %99

46:                                               ; preds = %38
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %6, align 8
  %49 = urem i64 %47, %48
  %50 = call i32 @WARN_ON(i64 %49)
  %51 = load i32, i32* %10, align 4
  %52 = lshr i32 %51, 1
  %53 = sub i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub i32 %54, %55
  %57 = sub i32 %56, 2
  store i32 %57, i32* %12, align 4
  %58 = load %struct.clk_dmn*, %struct.clk_dmn** %8, align 8
  %59 = getelementptr inbounds %struct.clk_dmn, %struct.clk_dmn* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @clkc_readl(i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @BIT(i32 %62)
  %64 = sub nsw i32 %63, 1
  %65 = shl i32 %64, 16
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @BIT(i32 %66)
  %68 = sub nsw i32 %67, 1
  %69 = shl i32 %68, 20
  %70 = or i32 %65, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %13, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %11, align 4
  %75 = shl i32 %74, 16
  %76 = load i32, i32* %12, align 4
  %77 = shl i32 %76, 20
  %78 = or i32 %75, %77
  %79 = call i32 @BIT(i32 25)
  %80 = or i32 %78, %79
  %81 = load i32, i32* %13, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.clk_dmn*, %struct.clk_dmn** %8, align 8
  %85 = getelementptr inbounds %struct.clk_dmn, %struct.clk_dmn* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @clkc_writel(i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %96, %46
  %89 = load %struct.clk_dmn*, %struct.clk_dmn** %8, align 8
  %90 = getelementptr inbounds %struct.clk_dmn, %struct.clk_dmn* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @clkc_readl(i32 %91)
  %93 = call i32 @BIT(i32 25)
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = call i32 (...) @cpu_relax()
  br label %88

98:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %43
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.clk_dmn* @to_dmnclk(%struct.clk_hw*) #1

declare dso_local i8* @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @clkc_readl(i32) #1

declare dso_local i32 @clkc_writel(i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
