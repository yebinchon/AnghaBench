; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c_ti_clk_divider_bestdiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c_ti_clk_divider_bestdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_omap_divider = type { i32 }

@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64*)* @ti_clk_divider_bestdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_clk_divider_bestdiv(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_omap_divider*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %17 = call %struct.clk_omap_divider* @to_clk_omap_divider(%struct.clk_hw* %16)
  store %struct.clk_omap_divider* %17, %struct.clk_omap_divider** %8, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %12, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %15, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i64 1, i64* %6, align 8
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %25 = call i8* @_get_maxdiv(%struct.clk_omap_divider* %24)
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %14, align 8
  %27 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %28 = call i32 @clk_hw_get_flags(%struct.clk_hw* %27)
  %29 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %61, label %32

32:                                               ; preds = %23
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %36 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @_div_round(i32 %37, i64 %38, i64 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ 1, %43 ], [ %45, %44 ]
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %14, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i64, i64* %14, align 8
  br label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi i64 [ %53, %52 ], [ %56, %54 ]
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %128

61:                                               ; preds = %23
  %62 = load i64, i64* @ULONG_MAX, align 8
  %63 = load i64, i64* %6, align 8
  %64 = udiv i64 %62, %63
  %65 = load i64, i64* %14, align 8
  %66 = call i64 @min(i64 %64, i64 %65)
  store i64 %66, i64* %14, align 8
  store i32 1, i32* %9, align 4
  br label %67

67:                                               ; preds = %112, %61
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %14, align 8
  %71 = icmp ule i64 %69, %70
  br i1 %71, label %72, label %115

72:                                               ; preds = %67
  %73 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @_is_valid_div(%struct.clk_omap_divider* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %112

78:                                               ; preds = %72
  %79 = load i64, i64* %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %79, %81
  %83 = load i64, i64* %15, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i64, i64* %15, align 8
  %87 = load i64*, i64** %7, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %4, align 4
  br label %128

89:                                               ; preds = %78
  %90 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %91 = call i32 @clk_hw_get_parent(%struct.clk_hw* %90)
  %92 = load i64, i64* %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @MULT_ROUND_UP(i64 %92, i32 %93)
  %95 = call i64 @clk_hw_round_rate(i32 %91, i32 %94)
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @DIV_ROUND_UP(i64 %96, i32 %97)
  store i64 %98, i64* %13, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %6, align 8
  %101 = icmp ule i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %89
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* %12, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %10, align 4
  %108 = load i64, i64* %13, align 8
  store i64 %108, i64* %12, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i64*, i64** %7, align 8
  store i64 %109, i64* %110, align 8
  br label %111

111:                                              ; preds = %106, %102, %89
  br label %112

112:                                              ; preds = %111, %77
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %67

115:                                              ; preds = %67
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %115
  %119 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %120 = call i8* @_get_maxdiv(%struct.clk_omap_divider* %119)
  %121 = ptrtoint i8* %120 to i32
  store i32 %121, i32* %10, align 4
  %122 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %123 = call i32 @clk_hw_get_parent(%struct.clk_hw* %122)
  %124 = call i64 @clk_hw_round_rate(i32 %123, i32 1)
  %125 = load i64*, i64** %7, align 8
  store i64 %124, i64* %125, align 8
  br label %126

126:                                              ; preds = %118, %115
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %85, %57
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.clk_omap_divider* @to_clk_omap_divider(%struct.clk_hw*) #1

declare dso_local i8* @_get_maxdiv(%struct.clk_omap_divider*) #1

declare dso_local i32 @clk_hw_get_flags(%struct.clk_hw*) #1

declare dso_local i32 @_div_round(i32, i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @_is_valid_div(%struct.clk_omap_divider*, i32) #1

declare dso_local i64 @clk_hw_round_rate(i32, i32) #1

declare dso_local i32 @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i32 @MULT_ROUND_UP(i64, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
