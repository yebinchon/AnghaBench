; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_output_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_output_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_si5341_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SI5341_OUT_CFG_RDIV_FORCE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @si5341_output_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si5341_output_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_si5341_output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.clk_si5341_output* @to_clk_si5341_output(%struct.clk_hw* %12)
  store %struct.clk_si5341_output* %13, %struct.clk_si5341_output** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = udiv i64 %14, %15
  %17 = lshr i64 %16, 1
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sle i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %33

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @BIT(i32 24)
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = call i32 @BIT(i32 24)
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.clk_si5341_output*, %struct.clk_si5341_output** %8, align 8
  %35 = getelementptr inbounds %struct.clk_si5341_output, %struct.clk_si5341_output* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.clk_si5341_output*, %struct.clk_si5341_output** %8, align 8
  %40 = call i32 @SI5341_OUT_CONFIG(%struct.clk_si5341_output* %39)
  %41 = load i32, i32* @SI5341_OUT_CFG_RDIV_FORCE2, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @SI5341_OUT_CFG_RDIV_FORCE2, align 4
  br label %47

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = call i32 @regmap_update_bits(i32 %38, i32 %40, i32 %41, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %81

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 255
  br label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %59, %57 ], [ 1, %60 ]
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = ashr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = ashr i32 %68, 16
  %70 = and i32 %69, 255
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %70, i32* %71, align 4
  %72 = load %struct.clk_si5341_output*, %struct.clk_si5341_output** %8, align 8
  %73 = getelementptr inbounds %struct.clk_si5341_output, %struct.clk_si5341_output* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.clk_si5341_output*, %struct.clk_si5341_output** %8, align 8
  %78 = call i32 @SI5341_OUT_R_REG(%struct.clk_si5341_output* %77)
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %80 = call i32 @regmap_bulk_write(i32 %76, i32 %78, i32* %79, i32 3)
  store i32 %80, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %61, %52
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.clk_si5341_output* @to_clk_si5341_output(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SI5341_OUT_CONFIG(%struct.clk_si5341_output*) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @SI5341_OUT_R_REG(%struct.clk_si5341_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
