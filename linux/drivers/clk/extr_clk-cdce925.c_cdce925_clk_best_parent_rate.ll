; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce925.c_cdce925_clk_best_parent_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce925.c_cdce925_clk_best_parent_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk* }
%struct.clk = type { i32 }

@CDCE925_PLL_FREQUENCY_MIN = common dso_local global i32 0, align 4
@CDCE925_PLL_FREQUENCY_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @cdce925_clk_best_parent_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cdce925_clk_best_parent_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %19 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %18, i32 0, i32 0
  %20 = load %struct.clk*, %struct.clk** %19, align 8
  %21 = call %struct.clk* @clk_get_parent(%struct.clk* %20)
  store %struct.clk* %21, %struct.clk** %6, align 8
  %22 = load %struct.clk*, %struct.clk** %6, align 8
  %23 = call %struct.clk* @clk_get_parent(%struct.clk* %22)
  store %struct.clk* %23, %struct.clk** %7, align 8
  %24 = load %struct.clk*, %struct.clk** %7, align 8
  %25 = call i64 @clk_get_rate(%struct.clk* %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %5, align 8
  %29 = urem i64 %27, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* %3, align 8
  br label %85

33:                                               ; preds = %2
  %34 = load i32, i32* @CDCE925_PLL_FREQUENCY_MIN, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @DIV_ROUND_UP(i32 %34, i64 %35)
  %37 = call i64 @max(i64 1, i32 %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* @CDCE925_PLL_FREQUENCY_MAX, align 8
  %39 = load i64, i64* %5, align 8
  %40 = udiv i64 %38, %39
  %41 = call i64 @min(i64 127, i64 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  store i64 0, i64* %3, align 8
  br label %85

46:                                               ; preds = %33
  %47 = load i64, i64* %10, align 8
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %10, align 8
  store i64 %48, i64* %13, align 8
  br label %49

49:                                               ; preds = %78, %46
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %13, align 8
  %56 = mul i64 %54, %55
  store i64 %56, i64* %14, align 8
  %57 = load %struct.clk*, %struct.clk** %6, align 8
  %58 = load i64, i64* %14, align 8
  %59 = call i64 @clk_round_rate(%struct.clk* %57, i64 %58)
  store i64 %59, i64* %15, align 8
  %60 = load i64, i64* %15, align 8
  %61 = icmp sle i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %78

63:                                               ; preds = %53
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %13, align 8
  %66 = sdiv i64 %64, %65
  store i64 %66, i64* %16, align 8
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %5, align 8
  %69 = sub nsw i64 %67, %68
  %70 = call i64 @abs(i64 %69)
  store i64 %70, i64* %17, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load i64, i64* %13, align 8
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %17, align 8
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %74, %63
  br label %78

78:                                               ; preds = %77, %62
  %79 = load i64, i64* %13, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %13, align 8
  br label %49

81:                                               ; preds = %49
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* %12, align 8
  %84 = mul i64 %82, %83
  store i64 %84, i64* %3, align 8
  br label %85

85:                                               ; preds = %81, %45, %31
  %86 = load i64, i64* %3, align 8
  ret i64 %86
}

declare dso_local %struct.clk* @clk_get_parent(%struct.clk*) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @clk_round_rate(%struct.clk*, i64) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
