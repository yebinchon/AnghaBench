; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_read_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_read_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si5341 = type { i64, i64, i32*, i32, i32* }

@SI5341_PLL_M_NUM = common dso_local global i32 0, align 4
@SI5341_SYNTH_N_CLK_TO_OUTX_EN = common dso_local global i32 0, align 4
@SI5341_SYNTH_N_CLK_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si5341*)* @si5341_read_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si5341_read_settings(%struct.clk_si5341* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_si5341*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [10 x i64], align 16
  store %struct.clk_si5341* %0, %struct.clk_si5341** %3, align 8
  %7 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %8 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SI5341_PLL_M_NUM, align 4
  %11 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  %12 = call i32 @regmap_bulk_read(i32 %9, i32 %10, i64* %11, i32 10)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %106

17:                                               ; preds = %1
  %18 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %19 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SI5341_SYNTH_N_CLK_TO_OUTX_EN, align 4
  %22 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  %23 = call i32 @regmap_bulk_read(i32 %20, i32 %21, i64* %22, i32 3)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %106

28:                                               ; preds = %17
  %29 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %30 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SI5341_SYNTH_N_CLK_DIS, align 4
  %33 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  %34 = call i32 @regmap_bulk_read(i32 %31, i32 %32, i64* %33, i32 1)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %106

39:                                               ; preds = %28
  store i64 0, i64* %5, align 8
  br label %40

40:                                               ; preds = %59, %39
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %43 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %48 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @SI5341_SYNTH_N_NUM(i64 %50)
  %52 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  %53 = call i32 @regmap_bulk_read(i32 %49, i32 %51, i64* %52, i32 10)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %106

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %5, align 8
  br label %40

62:                                               ; preds = %40
  store i64 0, i64* %5, align 8
  br label %63

63:                                               ; preds = %102, %62
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %66 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %105

69:                                               ; preds = %63
  %70 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %71 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %74 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %5, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  %80 = call i32 @regmap_bulk_read(i32 %72, i32 %78, i64* %79, i32 4)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %69
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %106

85:                                               ; preds = %69
  %86 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %87 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %90 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  %96 = call i32 @regmap_bulk_read(i32 %88, i32 %94, i64* %95, i32 3)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %106

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %5, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %5, align 8
  br label %63

105:                                              ; preds = %63
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %99, %83, %56, %37, %26, %15
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i64*, i32) #1

declare dso_local i32 @SI5341_SYNTH_N_NUM(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
