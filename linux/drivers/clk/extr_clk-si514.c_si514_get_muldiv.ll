; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si514.c_si514_get_muldiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si514.c_si514_get_muldiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si514 = type { i32 }
%struct.clk_si514_muldiv = type { i32, i32, i32, i32 }

@SI514_REG_M_FRAC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si514*, %struct.clk_si514_muldiv*)* @si514_get_muldiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si514_get_muldiv(%struct.clk_si514* %0, %struct.clk_si514_muldiv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_si514*, align 8
  %5 = alloca %struct.clk_si514_muldiv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [7 x i32], align 16
  store %struct.clk_si514* %0, %struct.clk_si514** %4, align 8
  store %struct.clk_si514_muldiv* %1, %struct.clk_si514_muldiv** %5, align 8
  %8 = load %struct.clk_si514*, %struct.clk_si514** %4, align 8
  %9 = getelementptr inbounds %struct.clk_si514, %struct.clk_si514* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SI514_REG_M_FRAC1, align 4
  %12 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %13 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = call i32 @regmap_bulk_read(i32 %10, i32 %11, i32* %12, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %22 = load i32, i32* %21, align 16
  %23 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = or i32 %22, %25
  %27 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 2
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 16
  %30 = or i32 %26, %29
  %31 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 31
  %34 = shl i32 %33, 24
  %35 = or i32 %30, %34
  %36 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %37 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 4
  %39 = load i32, i32* %38, align 16
  %40 = and i32 %39, 63
  %41 = shl i32 %40, 3
  %42 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 5
  %45 = or i32 %41, %44
  %46 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %47 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 6
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 4
  %51 = and i32 %50, 7
  %52 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %53 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 6
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, 3
  %57 = shl i32 %56, 8
  %58 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %57, %59
  %61 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %62 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %20, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
