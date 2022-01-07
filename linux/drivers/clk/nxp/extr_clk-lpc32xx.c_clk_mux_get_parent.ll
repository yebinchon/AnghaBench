; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_mux_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_mux_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc32xx_clk_mux = type { i64, i64, i64*, i32 }

@clk_regmap = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*)* @clk_mux_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_mux_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.lpc32xx_clk_mux*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.lpc32xx_clk_mux* @to_lpc32xx_mux(%struct.clk_hw* %8)
  store %struct.lpc32xx_clk_mux* %9, %struct.lpc32xx_clk_mux** %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call i64 @clk_hw_get_num_parents(%struct.clk_hw* %10)
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* @clk_regmap, align 4
  %13 = load %struct.lpc32xx_clk_mux*, %struct.lpc32xx_clk_mux** %4, align 8
  %14 = getelementptr inbounds %struct.lpc32xx_clk_mux, %struct.lpc32xx_clk_mux* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @regmap_read(i32 %12, i32 %15, i64* %6)
  %17 = load %struct.lpc32xx_clk_mux*, %struct.lpc32xx_clk_mux** %4, align 8
  %18 = getelementptr inbounds %struct.lpc32xx_clk_mux, %struct.lpc32xx_clk_mux* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = lshr i64 %20, %19
  store i64 %21, i64* %6, align 8
  %22 = load %struct.lpc32xx_clk_mux*, %struct.lpc32xx_clk_mux** %4, align 8
  %23 = getelementptr inbounds %struct.lpc32xx_clk_mux, %struct.lpc32xx_clk_mux* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load %struct.lpc32xx_clk_mux*, %struct.lpc32xx_clk_mux** %4, align 8
  %28 = getelementptr inbounds %struct.lpc32xx_clk_mux, %struct.lpc32xx_clk_mux* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load %struct.lpc32xx_clk_mux*, %struct.lpc32xx_clk_mux** %4, align 8
  %38 = getelementptr inbounds %struct.lpc32xx_clk_mux, %struct.lpc32xx_clk_mux* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i64, i64* %7, align 8
  store i64 %46, i64* %2, align 8
  br label %63

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %32

51:                                               ; preds = %32
  %52 = load i64, i64* @EINVAL, align 8
  %53 = sub i64 0, %52
  store i64 %53, i64* %2, align 8
  br label %63

54:                                               ; preds = %1
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i64, i64* @EINVAL, align 8
  %60 = sub i64 0, %59
  store i64 %60, i64* %2, align 8
  br label %63

61:                                               ; preds = %54
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %2, align 8
  br label %63

63:                                               ; preds = %61, %58, %51, %45
  %64 = load i64, i64* %2, align 8
  ret i64 %64
}

declare dso_local %struct.lpc32xx_clk_mux* @to_lpc32xx_mux(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
