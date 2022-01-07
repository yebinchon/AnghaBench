; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_div.c_ccu_div_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_div.c_ccu_div_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ccu_div = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@CCU_FEATURE_FIXED_POSTDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @ccu_div_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_div_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ccu_div*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.ccu_div* @hw_to_ccu_div(%struct.clk_hw* %8)
  store %struct.ccu_div* %9, %struct.ccu_div** %5, align 8
  %10 = load %struct.ccu_div*, %struct.ccu_div** %5, align 8
  %11 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ccu_div*, %struct.ccu_div** %5, align 8
  %15 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %13, %17
  %19 = call i64 @readl(i64 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.ccu_div*, %struct.ccu_div** %5, align 8
  %22 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = lshr i64 %20, %24
  store i64 %25, i64* %6, align 8
  %26 = load %struct.ccu_div*, %struct.ccu_div** %5, align 8
  %27 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 1, %29
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %6, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %6, align 8
  %35 = load %struct.ccu_div*, %struct.ccu_div** %5, align 8
  %36 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %35, i32 0, i32 1
  %37 = load %struct.ccu_div*, %struct.ccu_div** %5, align 8
  %38 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %37, i32 0, i32 3
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @ccu_mux_helper_apply_prediv(%struct.TYPE_4__* %36, i32* %38, i32 -1, i64 %39)
  store i64 %40, i64* %4, align 8
  %41 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.ccu_div*, %struct.ccu_div** %5, align 8
  %45 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ccu_div*, %struct.ccu_div** %5, align 8
  %49 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ccu_div*, %struct.ccu_div** %5, align 8
  %53 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @divider_recalc_rate(%struct.clk_hw* %41, i64 %42, i64 %43, i32 %47, i32 %51, i32 %55)
  store i64 %56, i64* %6, align 8
  %57 = load %struct.ccu_div*, %struct.ccu_div** %5, align 8
  %58 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %2
  %65 = load %struct.ccu_div*, %struct.ccu_div** %5, align 8
  %66 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = udiv i64 %68, %67
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %64, %2
  %71 = load i64, i64* %6, align 8
  ret i64 %71
}

declare dso_local %struct.ccu_div* @hw_to_ccu_div(%struct.clk_hw*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @ccu_mux_helper_apply_prediv(%struct.TYPE_4__*, i32*, i32, i64) #1

declare dso_local i64 @divider_recalc_rate(%struct.clk_hw*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
