; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-div.c_berlin2_div_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-div.c_berlin2_div_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.berlin2_div = type { i64, i64, %struct.berlin2_div_map }
%struct.berlin2_div_map = type { i32, i32, i64, i64, i64, i64 }

@DIV_SELECT_MASK = common dso_local global i64 0, align 8
@clk_div = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @berlin2_div_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @berlin2_div_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.berlin2_div*, align 8
  %6 = alloca %struct.berlin2_div_map*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = call %struct.berlin2_div* @to_berlin2_div(%struct.clk_hw* %11)
  store %struct.berlin2_div* %12, %struct.berlin2_div** %5, align 8
  %13 = load %struct.berlin2_div*, %struct.berlin2_div** %5, align 8
  %14 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %13, i32 0, i32 2
  store %struct.berlin2_div_map* %14, %struct.berlin2_div_map** %6, align 8
  store i64 1, i64* %9, align 8
  %15 = load %struct.berlin2_div*, %struct.berlin2_div** %5, align 8
  %16 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.berlin2_div*, %struct.berlin2_div** %5, align 8
  %21 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @spin_lock(i64 %22)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.berlin2_div*, %struct.berlin2_div** %5, align 8
  %26 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.berlin2_div_map*, %struct.berlin2_div_map** %6, align 8
  %29 = getelementptr inbounds %struct.berlin2_div_map, %struct.berlin2_div_map* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = call i32 @readl_relaxed(i64 %31)
  %33 = load %struct.berlin2_div_map*, %struct.berlin2_div_map** %6, align 8
  %34 = getelementptr inbounds %struct.berlin2_div_map, %struct.berlin2_div_map* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 1, %35
  %37 = and i32 %32, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %7, align 8
  %39 = load %struct.berlin2_div*, %struct.berlin2_div** %5, align 8
  %40 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.berlin2_div_map*, %struct.berlin2_div_map** %6, align 8
  %43 = getelementptr inbounds %struct.berlin2_div_map, %struct.berlin2_div_map* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = call i32 @readl_relaxed(i64 %45)
  %47 = load %struct.berlin2_div_map*, %struct.berlin2_div_map** %6, align 8
  %48 = getelementptr inbounds %struct.berlin2_div_map, %struct.berlin2_div_map* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %46, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %24
  store i64 3, i64* %9, align 8
  br label %83

56:                                               ; preds = %24
  %57 = load i64, i64* %7, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i64 1, i64* %9, align 8
  br label %82

60:                                               ; preds = %56
  %61 = load %struct.berlin2_div*, %struct.berlin2_div** %5, align 8
  %62 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.berlin2_div_map*, %struct.berlin2_div_map** %6, align 8
  %65 = getelementptr inbounds %struct.berlin2_div_map, %struct.berlin2_div_map* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = call i32 @readl_relaxed(i64 %67)
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %10, align 8
  %70 = load %struct.berlin2_div_map*, %struct.berlin2_div_map** %6, align 8
  %71 = getelementptr inbounds %struct.berlin2_div_map, %struct.berlin2_div_map* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = lshr i64 %73, %72
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* @DIV_SELECT_MASK, align 8
  %76 = load i64, i64* %10, align 8
  %77 = and i64 %76, %75
  store i64 %77, i64* %10, align 8
  %78 = load i64*, i64** @clk_div, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %60, %59
  br label %83

83:                                               ; preds = %82, %55
  %84 = load %struct.berlin2_div*, %struct.berlin2_div** %5, align 8
  %85 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.berlin2_div*, %struct.berlin2_div** %5, align 8
  %90 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @spin_unlock(i64 %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* %9, align 8
  %96 = udiv i64 %94, %95
  ret i64 %96
}

declare dso_local %struct.berlin2_div* @to_berlin2_div(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @spin_unlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
