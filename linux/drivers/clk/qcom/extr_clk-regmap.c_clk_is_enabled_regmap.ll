; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap.c_clk_is_enabled_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap.c_clk_is_enabled_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_is_enabled_regmap(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %7)
  store %struct.clk_regmap* %8, %struct.clk_regmap** %4, align 8
  %9 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %10 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %13 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @regmap_read(i32 %11, i32 %14, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %41

20:                                               ; preds = %1
  %21 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %22 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %28 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %26, %29
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %41

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %36 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %33, %25, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
