; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_output_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_output_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_si5341_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SI5341_OUT_CFG_RDIV_FORCE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @si5341_output_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @si5341_output_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_si5341_output*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.clk_si5341_output* @to_clk_si5341_output(%struct.clk_hw* %11)
  store %struct.clk_si5341_output* %12, %struct.clk_si5341_output** %6, align 8
  %13 = load %struct.clk_si5341_output*, %struct.clk_si5341_output** %6, align 8
  %14 = getelementptr inbounds %struct.clk_si5341_output, %struct.clk_si5341_output* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.clk_si5341_output*, %struct.clk_si5341_output** %6, align 8
  %19 = call i32 @SI5341_OUT_R_REG(%struct.clk_si5341_output* %18)
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %21 = call i32 @regmap_bulk_read(i32 %17, i32 %19, i32* %20, i32 3)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %3, align 8
  br label %70

27:                                               ; preds = %2
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 16
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = or i32 %30, %33
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %34, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  store i64 0, i64* %3, align 8
  br label %70

41:                                               ; preds = %27
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = shl i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load %struct.clk_si5341_output*, %struct.clk_si5341_output** %6, align 8
  %47 = getelementptr inbounds %struct.clk_si5341_output, %struct.clk_si5341_output* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.clk_si5341_output*, %struct.clk_si5341_output** %6, align 8
  %52 = call i32 @SI5341_OUT_CONFIG(%struct.clk_si5341_output* %51)
  %53 = call i32 @regmap_read(i32 %50, i32 %52, i32* %8)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %3, align 8
  br label %70

59:                                               ; preds = %41
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @SI5341_OUT_CFG_RDIV_FORCE2, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 2, i32* %9, align 4
  br label %65

65:                                               ; preds = %64, %59
  %66 = load i64, i64* %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = udiv i64 %66, %68
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %65, %56, %40, %24
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local %struct.clk_si5341_output* @to_clk_si5341_output(%struct.clk_hw*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @SI5341_OUT_R_REG(%struct.clk_si5341_output*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @SI5341_OUT_CONFIG(%struct.clk_si5341_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
