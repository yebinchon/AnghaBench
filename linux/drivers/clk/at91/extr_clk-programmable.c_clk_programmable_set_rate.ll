; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-programmable.c_clk_programmable_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-programmable.c_clk_programmable_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_programmable = type { i32, i32, %struct.clk_programmable_layout* }
%struct.clk_programmable_layout = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_programmable_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_programmable_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_programmable*, align 8
  %9 = alloca %struct.clk_programmable_layout*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.clk_programmable* @to_clk_programmable(%struct.clk_hw* %12)
  store %struct.clk_programmable* %13, %struct.clk_programmable** %8, align 8
  %14 = load %struct.clk_programmable*, %struct.clk_programmable** %8, align 8
  %15 = getelementptr inbounds %struct.clk_programmable, %struct.clk_programmable* %14, i32 0, i32 2
  %16 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %15, align 8
  store %struct.clk_programmable_layout* %16, %struct.clk_programmable_layout** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = udiv i64 %17, %18
  store i64 %19, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %86

25:                                               ; preds = %3
  %26 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %9, align 8
  %27 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i64, i64* %10, align 8
  %32 = sub i64 %31, 1
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %9, align 8
  %36 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %86

42:                                               ; preds = %30
  br label %65

43:                                               ; preds = %25
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @fls(i64 %44)
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load i64, i64* %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = shl i32 1, %48
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %86

55:                                               ; preds = %43
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %9, align 8
  %58 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %86

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %42
  %66 = load %struct.clk_programmable*, %struct.clk_programmable** %8, align 8
  %67 = getelementptr inbounds %struct.clk_programmable, %struct.clk_programmable* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.clk_programmable*, %struct.clk_programmable** %8, align 8
  %70 = getelementptr inbounds %struct.clk_programmable, %struct.clk_programmable* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @AT91_PMC_PCKR(i32 %71)
  %73 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %9, align 8
  %74 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %9, align 8
  %77 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %75, %78
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %9, align 8
  %82 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %80, %83
  %85 = call i32 @regmap_update_bits(i32 %68, i32 %72, i32 %79, i32 %84)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %65, %61, %52, %39, %22
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.clk_programmable* @to_clk_programmable(%struct.clk_hw*) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @AT91_PMC_PCKR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
