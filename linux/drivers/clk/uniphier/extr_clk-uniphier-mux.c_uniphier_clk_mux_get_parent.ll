; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-mux.c_uniphier_clk_mux_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-mux.c_uniphier_clk_mux_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.uniphier_clk_mux = type { i32*, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @uniphier_clk_mux_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_clk_mux_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.uniphier_clk_mux*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.uniphier_clk_mux* @to_uniphier_clk_mux(%struct.clk_hw* %9)
  store %struct.uniphier_clk_mux* %10, %struct.uniphier_clk_mux** %4, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.uniphier_clk_mux*, %struct.uniphier_clk_mux** %4, align 8
  %14 = getelementptr inbounds %struct.uniphier_clk_mux, %struct.uniphier_clk_mux* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.uniphier_clk_mux*, %struct.uniphier_clk_mux** %4, align 8
  %17 = getelementptr inbounds %struct.uniphier_clk_mux, %struct.uniphier_clk_mux* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @regmap_read(i32 %15, i32 %18, i32* %7)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load %struct.uniphier_clk_mux*, %struct.uniphier_clk_mux** %4, align 8
  %31 = getelementptr inbounds %struct.uniphier_clk_mux, %struct.uniphier_clk_mux* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.uniphier_clk_mux*, %struct.uniphier_clk_mux** %4, align 8
  %40 = getelementptr inbounds %struct.uniphier_clk_mux, %struct.uniphier_clk_mux* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %38, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %29
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  br label %56

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %25

53:                                               ; preds = %25
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %47, %22
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.uniphier_clk_mux* @to_uniphier_clk_mux(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
