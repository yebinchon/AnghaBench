; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-div.c_berlin2_div_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-div.c_berlin2_div_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.berlin2_div = type { i64, i64, %struct.berlin2_div_map }
%struct.berlin2_div_map = type { i32, i64, i32, i64 }

@PLL_SELECT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @berlin2_div_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berlin2_div_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.berlin2_div*, align 8
  %4 = alloca %struct.berlin2_div_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.berlin2_div* @to_berlin2_div(%struct.clk_hw* %7)
  store %struct.berlin2_div* %8, %struct.berlin2_div** %3, align 8
  %9 = load %struct.berlin2_div*, %struct.berlin2_div** %3, align 8
  %10 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %9, i32 0, i32 2
  store %struct.berlin2_div_map* %10, %struct.berlin2_div_map** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.berlin2_div*, %struct.berlin2_div** %3, align 8
  %12 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.berlin2_div*, %struct.berlin2_div** %3, align 8
  %17 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @spin_lock(i64 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.berlin2_div*, %struct.berlin2_div** %3, align 8
  %22 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.berlin2_div_map*, %struct.berlin2_div_map** %4, align 8
  %25 = getelementptr inbounds %struct.berlin2_div_map, %struct.berlin2_div_map* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i32 @readl_relaxed(i64 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.berlin2_div_map*, %struct.berlin2_div_map** %4, align 8
  %30 = getelementptr inbounds %struct.berlin2_div_map, %struct.berlin2_div_map* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @BIT(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %20
  %38 = load %struct.berlin2_div*, %struct.berlin2_div** %3, align 8
  %39 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.berlin2_div_map*, %struct.berlin2_div_map** %4, align 8
  %42 = getelementptr inbounds %struct.berlin2_div_map, %struct.berlin2_div_map* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = call i32 @readl_relaxed(i64 %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.berlin2_div_map*, %struct.berlin2_div_map** %4, align 8
  %47 = getelementptr inbounds %struct.berlin2_div_map, %struct.berlin2_div_map* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = ashr i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @PLL_SELECT_MASK, align 4
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 1, %54
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %37, %20
  %57 = load %struct.berlin2_div*, %struct.berlin2_div** %3, align 8
  %58 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.berlin2_div*, %struct.berlin2_div** %3, align 8
  %63 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @spin_unlock(i64 %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.berlin2_div* @to_berlin2_div(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
