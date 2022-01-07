; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_get_divs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_get_divs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si570 = type { i64, i32 }

@SI570_REG_HS_N1 = common dso_local global i64 0, align 8
@HS_DIV_MASK = common dso_local global i32 0, align 4
@HS_DIV_SHIFT = common dso_local global i32 0, align 4
@HS_DIV_OFFSET = common dso_local global i32 0, align 4
@N1_6_2_MASK = common dso_local global i32 0, align 4
@N1_1_0_MASK = common dso_local global i32 0, align 4
@RFREQ_37_32_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si570*, i32*, i32*, i32*)* @si570_get_divs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si570_get_divs(%struct.clk_si570* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_si570*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [6 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.clk_si570* %0, %struct.clk_si570** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %14 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* @SI570_REG_HS_N1, align 8
  %17 = load %struct.clk_si570*, %struct.clk_si570** %6, align 8
  %18 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = call i32 @regmap_bulk_read(i32 %15, i64 %20, i32* %21, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %86

29:                                               ; preds = %4
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = load i32, i32* @HS_DIV_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @HS_DIV_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = load i32, i32* @HS_DIV_OFFSET, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %40 = load i32, i32* %39, align 16
  %41 = load i32, i32* @N1_6_2_MASK, align 4
  %42 = and i32 %40, %41
  %43 = shl i32 %42, 2
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @N1_1_0_MASK, align 4
  %47 = and i32 %45, %46
  %48 = ashr i32 %47, 6
  %49 = add nsw i32 %43, %48
  %50 = add nsw i32 %49, 1
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp ugt i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %29
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, -2
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %55, %29
  %60 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RFREQ_37_32_MASK, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = shl i32 %64, 8
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %65, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = shl i32 %69, 8
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %70, %72
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = shl i32 %74, 8
  %76 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 4
  %77 = load i32, i32* %76, align 16
  %78 = add nsw i32 %75, %77
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = shl i32 %79, 8
  %81 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %80, %82
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %59, %27
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @regmap_bulk_read(i32, i64, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
