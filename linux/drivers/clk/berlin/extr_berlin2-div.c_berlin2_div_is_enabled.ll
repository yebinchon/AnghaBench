; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-div.c_berlin2_div_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-div.c_berlin2_div_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.berlin2_div = type { i64, i64, %struct.berlin2_div_map }
%struct.berlin2_div_map = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @berlin2_div_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berlin2_div_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.berlin2_div*, align 8
  %4 = alloca %struct.berlin2_div_map*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.berlin2_div* @to_berlin2_div(%struct.clk_hw* %6)
  store %struct.berlin2_div* %7, %struct.berlin2_div** %3, align 8
  %8 = load %struct.berlin2_div*, %struct.berlin2_div** %3, align 8
  %9 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %8, i32 0, i32 2
  store %struct.berlin2_div_map* %9, %struct.berlin2_div_map** %4, align 8
  %10 = load %struct.berlin2_div*, %struct.berlin2_div** %3, align 8
  %11 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.berlin2_div*, %struct.berlin2_div** %3, align 8
  %16 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @spin_lock(i64 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.berlin2_div*, %struct.berlin2_div** %3, align 8
  %21 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.berlin2_div_map*, %struct.berlin2_div_map** %4, align 8
  %24 = getelementptr inbounds %struct.berlin2_div_map, %struct.berlin2_div_map* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i32 @readl_relaxed(i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.berlin2_div_map*, %struct.berlin2_div_map** %4, align 8
  %29 = getelementptr inbounds %struct.berlin2_div_map, %struct.berlin2_div_map* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.berlin2_div*, %struct.berlin2_div** %3, align 8
  %34 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %19
  %38 = load %struct.berlin2_div*, %struct.berlin2_div** %3, align 8
  %39 = getelementptr inbounds %struct.berlin2_div, %struct.berlin2_div* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @spin_unlock(i64 %40)
  br label %42

42:                                               ; preds = %37, %19
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 1
  ret i32 %44
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
