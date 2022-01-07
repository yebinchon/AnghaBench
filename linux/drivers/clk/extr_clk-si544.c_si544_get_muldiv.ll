; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si544.c_si544_get_muldiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si544.c_si544_get_muldiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si544 = type { i32 }
%struct.clk_si544_muldiv = type { i32, i32, i32, i32, i32 }

@SI544_REG_HS_DIV = common dso_local global i32 0, align 4
@SI544_REG_FBDIV0 = common dso_local global i32 0, align 4
@SI544_REG_ADPLL_DELTA_M0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si544*, %struct.clk_si544_muldiv*)* @si544_get_muldiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si544_get_muldiv(%struct.clk_si544* %0, %struct.clk_si544_muldiv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_si544*, align 8
  %5 = alloca %struct.clk_si544_muldiv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  store %struct.clk_si544* %0, %struct.clk_si544** %4, align 8
  store %struct.clk_si544_muldiv* %1, %struct.clk_si544_muldiv** %5, align 8
  %8 = load %struct.clk_si544*, %struct.clk_si544** %4, align 8
  %9 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SI544_REG_HS_DIV, align 4
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %13 = call i32 @regmap_bulk_read(i32 %10, i32 %11, i32* %12, i32 2)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %98

18:                                               ; preds = %2
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 4
  %22 = and i32 %21, 7
  %23 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %5, align 8
  %24 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 7
  %28 = shl i32 %27, 8
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = or i32 %28, %30
  %32 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %5, align 8
  %33 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.clk_si544*, %struct.clk_si544** %4, align 8
  %35 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SI544_REG_FBDIV0, align 4
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %39 = call i32 @regmap_bulk_read(i32 %36, i32 %37, i32* %38, i32 6)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %18
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %98

44:                                               ; preds = %18
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  %46 = load i32, i32* %45, align 16
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 7
  %50 = shl i32 %49, 8
  %51 = or i32 %46, %50
  %52 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %5, align 8
  %53 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %55, %58
  %60 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 16
  %63 = or i32 %59, %62
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 24
  %67 = or i32 %63, %66
  %68 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %5, align 8
  %69 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.clk_si544*, %struct.clk_si544** %4, align 8
  %71 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SI544_REG_ADPLL_DELTA_M0, align 4
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %75 = call i32 @regmap_bulk_read(i32 %72, i32 %73, i32* %74, i32 3)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %44
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %98

80:                                               ; preds = %44
  %81 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %82 = load i32, i32* %81, align 16
  %83 = shl i32 %82, 8
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 16
  %87 = or i32 %83, %86
  %88 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  %89 = load i32, i32* %88, align 8
  %90 = shl i32 %89, 24
  %91 = or i32 %87, %90
  %92 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %5, align 8
  %93 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %5, align 8
  %95 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 8
  store i32 %97, i32* %95, align 4
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %80, %78, %42, %16
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
