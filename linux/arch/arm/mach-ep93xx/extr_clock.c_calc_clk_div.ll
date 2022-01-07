; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-ep93xx/extr_clock.c_calc_clk_div.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-ep93xx/extr_clock.c_calc_clk_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, %struct.clk* }

@clk_pll1 = common dso_local global %struct.clk zeroinitializer, align 8
@clk_pll2 = common dso_local global %struct.clk zeroinitializer, align 8
@clk_xtali = common dso_local global %struct.clk zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64, i32*, i32*, i32*, i32*)* @calc_clk_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_clk_div(%struct.clk* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.clk*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 -1, i64* %18, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.clk, %struct.clk* @clk_pll1, i32 0, i32 0), align 8
  %24 = sdiv i32 %23, 4
  %25 = load i32, i32* getelementptr inbounds (%struct.clk, %struct.clk* @clk_pll2, i32 0, i32 0), align 8
  %26 = sdiv i32 %25, 4
  %27 = load i32, i32* getelementptr inbounds (%struct.clk, %struct.clk* @clk_xtali, i32 0, i32 0), align 8
  %28 = sdiv i32 %27, 4
  %29 = call i64 @max3(i32 %24, i32 %26, i32 %28)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %15, align 8
  %32 = call i64 @min(i64 %30, i64 %31)
  store i64 %32, i64* %9, align 8
  store i32 0, i32* %19, align 4
  br label %33

33:                                               ; preds = %115, %6
  %34 = load i32, i32* %19, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %118

36:                                               ; preds = %33
  %37 = load i32, i32* %19, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store %struct.clk* @clk_xtali, %struct.clk** %14, align 8
  br label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %19, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store %struct.clk* @clk_pll1, %struct.clk** %14, align 8
  br label %45

44:                                               ; preds = %40
  store %struct.clk* @clk_pll2, %struct.clk** %14, align 8
  br label %45

45:                                               ; preds = %44, %43
  br label %46

46:                                               ; preds = %45, %39
  %47 = load %struct.clk*, %struct.clk** %14, align 8
  %48 = getelementptr inbounds %struct.clk, %struct.clk* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %17, align 8
  store i32 4, i32* %22, align 4
  br label %52

52:                                               ; preds = %111, %46
  %53 = load i32, i32* %22, align 4
  %54 = icmp sle i32 %53, 6
  br i1 %54, label %55, label %114

55:                                               ; preds = %52
  %56 = load i64, i64* %17, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* %22, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %57, %59
  %61 = udiv i64 %56, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %21, align 4
  %63 = load i32, i32* %21, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %68, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %21, align 4
  %67 = icmp sgt i32 %66, 127
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %55
  br label %111

69:                                               ; preds = %65
  %70 = load i64, i64* %17, align 8
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* %21, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = udiv i64 %70, %74
  store i64 %75, i64* %16, align 8
  %76 = load i32, i32* %20, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %9, align 8
  %81 = sub i64 %79, %80
  %82 = call i64 @abs(i64 %81)
  %83 = load i64, i64* %18, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %78, %69
  %86 = load i32, i32* %22, align 4
  %87 = sub nsw i32 %86, 3
  %88 = load i32*, i32** %12, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %21, align 4
  %90 = load i32*, i32** %13, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %19, align 4
  %92 = icmp eq i32 %91, 2
  %93 = zext i1 %92 to i32
  %94 = load i32*, i32** %10, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %19, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = load i32*, i32** %11, align 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.clk*, %struct.clk** %14, align 8
  %100 = load %struct.clk*, %struct.clk** %8, align 8
  %101 = getelementptr inbounds %struct.clk, %struct.clk* %100, i32 0, i32 1
  store %struct.clk* %99, %struct.clk** %101, align 8
  %102 = load i64, i64* %16, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.clk*, %struct.clk** %8, align 8
  %105 = getelementptr inbounds %struct.clk, %struct.clk* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i64, i64* %16, align 8
  %107 = load i64, i64* %9, align 8
  %108 = sub i64 %106, %107
  %109 = call i64 @abs(i64 %108)
  store i64 %109, i64* %18, align 8
  store i32 1, i32* %20, align 4
  br label %110

110:                                              ; preds = %85, %78
  br label %111

111:                                              ; preds = %110, %68
  %112 = load i32, i32* %22, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %22, align 4
  br label %52

114:                                              ; preds = %52
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %19, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %19, align 4
  br label %33

118:                                              ; preds = %33
  %119 = load i32, i32* %20, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %7, align 4
  br label %125

124:                                              ; preds = %118
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %124, %121
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i64 @max3(i32, i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
