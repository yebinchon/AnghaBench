; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si544.c_si544_set_muldiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si544.c_si544_set_muldiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si544 = type { i32 }
%struct.clk_si544_muldiv = type { i32, i32, i32, i32 }

@SI544_REG_HS_DIV = common dso_local global i32 0, align 4
@SI544_REG_FBDIV0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si544*, %struct.clk_si544_muldiv*)* @si544_set_muldiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si544_set_muldiv(%struct.clk_si544* %0, %struct.clk_si544_muldiv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_si544*, align 8
  %5 = alloca %struct.clk_si544_muldiv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  store %struct.clk_si544* %0, %struct.clk_si544** %4, align 8
  store %struct.clk_si544_muldiv* %1, %struct.clk_si544_muldiv** %5, align 8
  %8 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %5, align 8
  %9 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32 %10, i32* %11, align 16
  %12 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %5, align 8
  %13 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 8
  %16 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %5, align 8
  %17 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 4
  %20 = or i32 %15, %19
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.clk_si544*, %struct.clk_si544** %4, align 8
  %23 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SI544_REG_HS_DIV, align 4
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %27 = call i32 @regmap_bulk_write(i32 %24, i32 %25, i32* %26, i32 2)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %2
  %33 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %5, align 8
  %34 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32 %35, i32* %36, align 16
  %37 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %5, align 8
  %38 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 8
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %5, align 8
  %43 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 16
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  store i32 %45, i32* %46, align 8
  %47 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %5, align 8
  %48 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 24
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  store i32 %50, i32* %51, align 4
  %52 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %5, align 8
  %53 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  store i32 %54, i32* %55, align 16
  %56 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %5, align 8
  %57 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 8
  %60 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  store i32 %59, i32* %60, align 4
  %61 = load %struct.clk_si544*, %struct.clk_si544** %4, align 8
  %62 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SI544_REG_FBDIV0, align 4
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %66 = call i32 @regmap_bulk_write(i32 %63, i32 %64, i32* %65, i32 6)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %32, %30
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
