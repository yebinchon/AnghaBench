; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-half-divider.c_clk_half_divider_bestdiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-half-divider.c_clk_half_divider_bestdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64*, i32, i64)* @clk_half_divider_bestdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_half_divider_bestdiv(%struct.clk_hw* %0, i64 %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %15, align 8
  %19 = load i64*, i64** %9, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %18, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i64 1, i64* %8, align 8
  br label %24

24:                                               ; preds = %23, %5
  %25 = load i32, i32* %10, align 4
  %26 = call i8* @div_mask(i32 %25)
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %17, align 8
  %28 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %29 = call i32 @clk_hw_get_flags(%struct.clk_hw* %28)
  %30 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %64, label %33

33:                                               ; preds = %24
  %34 = load i64*, i64** %9, align 8
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = trunc i64 %36 to i32
  %38 = mul nsw i32 %37, 2
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i8* @DIV_ROUND_UP_ULL(i32 %38, i32 %40)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %50

46:                                               ; preds = %33
  %47 = load i32, i32* %13, align 4
  %48 = sub i32 %47, 3
  %49 = udiv i32 %48, 2
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %46, %45
  %51 = load i32, i32* %13, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %17, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* %17, align 8
  br label %60

57:                                               ; preds = %50
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi i64 [ %56, %55 ], [ %59, %57 ]
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %6, align 4
  br label %137

64:                                               ; preds = %24
  %65 = load i64, i64* @ULONG_MAX, align 8
  %66 = load i64, i64* %8, align 8
  %67 = udiv i64 %65, %66
  %68 = load i64, i64* %17, align 8
  %69 = call i64 @min(i64 %67, i64 %68)
  store i64 %69, i64* %17, align 8
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %121, %64
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %17, align 8
  %74 = icmp ule i64 %72, %73
  br i1 %74, label %75, label %124

75:                                               ; preds = %70
  %76 = load i64, i64* %8, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* %12, align 4
  %79 = mul i32 %78, 2
  %80 = add i32 %79, 3
  %81 = mul i32 %77, %80
  %82 = load i64, i64* %18, align 8
  %83 = trunc i64 %82 to i32
  %84 = mul nsw i32 %83, 2
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = load i64, i64* %18, align 8
  %88 = load i64*, i64** %9, align 8
  store i64 %87, i64* %88, align 8
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %6, align 4
  br label %137

90:                                               ; preds = %75
  %91 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %92 = call i32 @clk_hw_get_parent(%struct.clk_hw* %91)
  %93 = load i64, i64* %8, align 8
  %94 = trunc i64 %93 to i32
  %95 = load i32, i32* %12, align 4
  %96 = mul i32 %95, 2
  %97 = add i32 %96, 3
  %98 = mul i32 %94, %97
  %99 = udiv i32 %98, 2
  %100 = call i64 @clk_hw_round_rate(i32 %92, i32 %99)
  store i64 %100, i64* %14, align 8
  %101 = load i64, i64* %14, align 8
  %102 = trunc i64 %101 to i32
  %103 = mul nsw i32 %102, 2
  %104 = load i32, i32* %12, align 4
  %105 = mul i32 %104, 2
  %106 = add i32 %105, 3
  %107 = call i8* @DIV_ROUND_UP_ULL(i32 %103, i32 %106)
  %108 = ptrtoint i8* %107 to i64
  store i64 %108, i64* %16, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load i64, i64* %15, align 8
  %112 = load i64, i64* %11, align 8
  %113 = call i64 @_is_best_half_div(i64 %109, i64 %110, i64 %111, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %90
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %13, align 4
  %117 = load i64, i64* %16, align 8
  store i64 %117, i64* %15, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i64*, i64** %9, align 8
  store i64 %118, i64* %119, align 8
  br label %120

120:                                              ; preds = %115, %90
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %12, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %70

124:                                              ; preds = %70
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = call i8* @div_mask(i32 %128)
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* %13, align 4
  %131 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %132 = call i32 @clk_hw_get_parent(%struct.clk_hw* %131)
  %133 = call i64 @clk_hw_round_rate(i32 %132, i32 1)
  %134 = load i64*, i64** %9, align 8
  store i64 %133, i64* %134, align 8
  br label %135

135:                                              ; preds = %127, %124
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %135, %86, %60
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i8* @div_mask(i32) #1

declare dso_local i32 @clk_hw_get_flags(%struct.clk_hw*) #1

declare dso_local i8* @DIV_ROUND_UP_ULL(i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @clk_hw_round_rate(i32, i32) #1

declare dso_local i32 @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i64 @_is_best_half_div(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
