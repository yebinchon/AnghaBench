; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_sclk-div.c_sclk_div_bestdiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_sclk-div.c_sclk_div_bestdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.meson_sclk_div_data = type { i32 }

@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64*, %struct.meson_sclk_div_data*)* @sclk_div_bestdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclk_div_bestdiv(%struct.clk_hw* %0, i64 %1, i64* %2, %struct.meson_sclk_div_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.meson_sclk_div_data*, align 8
  %10 = alloca %struct.clk_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.meson_sclk_div_data* %3, %struct.meson_sclk_div_data** %9, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %19 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %18)
  store %struct.clk_hw* %19, %struct.clk_hw** %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i64 1, i64* %7, align 8
  br label %23

23:                                               ; preds = %22, %4
  %24 = load %struct.meson_sclk_div_data*, %struct.meson_sclk_div_data** %9, align 8
  %25 = call i8* @sclk_div_maxdiv(%struct.meson_sclk_div_data* %24)
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %13, align 8
  %27 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %28 = call i32 @clk_hw_get_flags(%struct.clk_hw* %27)
  %29 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %23
  %33 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64*, i64** %8, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @sclk_div_getdiv(%struct.clk_hw* %33, i64 %34, i64 %36, i64 %37)
  store i32 %38, i32* %5, align 4
  br label %100

39:                                               ; preds = %23
  %40 = load i64, i64* @ULONG_MAX, align 8
  %41 = load i64, i64* %7, align 8
  %42 = udiv i64 %40, %41
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @min(i64 %42, i64 %43)
  store i64 %44, i64* %13, align 8
  store i32 2, i32* %12, align 4
  br label %45

45:                                               ; preds = %85, %39
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %13, align 8
  %49 = icmp ule i64 %47, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %51, %53
  %55 = load i64*, i64** %8, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %100

60:                                               ; preds = %50
  %61 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %62, %64
  %66 = call i64 @clk_hw_round_rate(%struct.clk_hw* %61, i64 %65)
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %15, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %12, align 4
  %70 = call i64 @DIV_ROUND_UP_ULL(i32 %68, i32 %69)
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %14, align 8
  %73 = sub i64 %71, %72
  %74 = call i64 @abs(i64 %73)
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %16, align 8
  %77 = sub i64 %75, %76
  %78 = call i64 @abs(i64 %77)
  %79 = icmp slt i64 %74, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %60
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %11, align 4
  %82 = load i64, i64* %14, align 8
  store i64 %82, i64* %16, align 8
  %83 = load i64, i64* %15, align 8
  store i64 %83, i64* %17, align 8
  br label %84

84:                                               ; preds = %80, %60
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %45

88:                                               ; preds = %45
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load %struct.meson_sclk_div_data*, %struct.meson_sclk_div_data** %9, align 8
  %93 = call i8* @sclk_div_maxdiv(%struct.meson_sclk_div_data* %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %11, align 4
  br label %98

95:                                               ; preds = %88
  %96 = load i64, i64* %17, align 8
  %97 = load i64*, i64** %8, align 8
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %58, %32
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i8* @sclk_div_maxdiv(%struct.meson_sclk_div_data*) #1

declare dso_local i32 @clk_hw_get_flags(%struct.clk_hw*) #1

declare dso_local i32 @sclk_div_getdiv(%struct.clk_hw*, i64, i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #1

declare dso_local i64 @DIV_ROUND_UP_ULL(i32, i32) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
