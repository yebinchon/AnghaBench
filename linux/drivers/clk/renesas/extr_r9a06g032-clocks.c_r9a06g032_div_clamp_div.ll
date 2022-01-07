; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_div_clamp_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_div_clamp_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r9a06g032_clk_div = type { i64, i64, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.r9a06g032_clk_div*, i64, i64)* @r9a06g032_div_clamp_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @r9a06g032_div_clamp_div(%struct.r9a06g032_clk_div* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.r9a06g032_clk_div*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.r9a06g032_clk_div* %0, %struct.r9a06g032_clk_div** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %13, 1
  %15 = call i64 @DIV_ROUND_UP(i64 %12, i64 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %5, align 8
  %18 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %5, align 8
  %23 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  br label %124

25:                                               ; preds = %3
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %5, align 8
  %28 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %5, align 8
  %33 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %4, align 8
  br label %124

35:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %119, %35
  %37 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %5, align 8
  %38 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %5, align 8
  %44 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = icmp slt i32 %42, %46
  br label %48

48:                                               ; preds = %41, %36
  %49 = phi i1 [ false, %36 ], [ %47, %41 ]
  br i1 %49, label %50, label %122

50:                                               ; preds = %48
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %5, align 8
  %53 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %52, i32 0, i32 3
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %51, %58
  br i1 %59, label %60, label %118

60:                                               ; preds = %50
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %5, align 8
  %63 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %62, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp sle i64 %61, %69
  br i1 %70, label %71, label %118

71:                                               ; preds = %60
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %5, align 8
  %75 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @DIV_ROUND_UP(i64 %73, i64 %80)
  %82 = sub i64 %72, %81
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %5, align 8
  %85 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %84, i32 0, i32 3
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @DIV_ROUND_UP(i64 %83, i64 %91)
  %93 = load i64, i64* %6, align 8
  %94 = sub i64 %92, %93
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %10, align 8
  %97 = icmp uge i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %71
  %99 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %5, align 8
  %100 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %99, i32 0, i32 3
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  br label %115

106:                                              ; preds = %71
  %107 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %5, align 8
  %108 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %107, i32 0, i32 3
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %109, i64 %112
  %114 = load i64, i64* %113, align 8
  br label %115

115:                                              ; preds = %106, %98
  %116 = phi i64 [ %105, %98 ], [ %114, %106 ]
  store i64 %116, i64* %8, align 8
  %117 = load i64, i64* %8, align 8
  store i64 %117, i64* %4, align 8
  br label %124

118:                                              ; preds = %60, %50
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %36

122:                                              ; preds = %48
  %123 = load i64, i64* %8, align 8
  store i64 %123, i64* %4, align 8
  br label %124

124:                                              ; preds = %122, %115, %31, %21
  %125 = load i64, i64* %4, align 8
  ret i64 %125
}

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
