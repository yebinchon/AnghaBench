; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mult.c_ccu_mult_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mult.c_ccu_mult_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ccu_mult = type { %struct.TYPE_5__, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @ccu_mult_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_mult_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ccu_mult*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.ccu_mult* @hw_to_ccu_mult(%struct.clk_hw* %9)
  store %struct.ccu_mult* %10, %struct.ccu_mult** %6, align 8
  %11 = load %struct.ccu_mult*, %struct.ccu_mult** %6, align 8
  %12 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %11, i32 0, i32 2
  %13 = load %struct.ccu_mult*, %struct.ccu_mult** %6, align 8
  %14 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %13, i32 0, i32 3
  %15 = call i64 @ccu_frac_helper_is_enabled(%struct.TYPE_6__* %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.ccu_mult*, %struct.ccu_mult** %6, align 8
  %19 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %18, i32 0, i32 2
  %20 = load %struct.ccu_mult*, %struct.ccu_mult** %6, align 8
  %21 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %20, i32 0, i32 3
  %22 = call i64 @ccu_frac_helper_read_rate(%struct.TYPE_6__* %19, i32* %21)
  store i64 %22, i64* %3, align 8
  br label %63

23:                                               ; preds = %2
  %24 = load %struct.ccu_mult*, %struct.ccu_mult** %6, align 8
  %25 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ccu_mult*, %struct.ccu_mult** %6, align 8
  %29 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %27, %31
  %33 = call i64 @readl(i64 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.ccu_mult*, %struct.ccu_mult** %6, align 8
  %36 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = lshr i64 %34, %38
  store i64 %39, i64* %7, align 8
  %40 = load %struct.ccu_mult*, %struct.ccu_mult** %6, align 8
  %41 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 1, %43
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %7, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load %struct.ccu_mult*, %struct.ccu_mult** %6, align 8
  %50 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %49, i32 0, i32 2
  %51 = load %struct.ccu_mult*, %struct.ccu_mult** %6, align 8
  %52 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %51, i32 0, i32 1
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @ccu_mux_helper_apply_prediv(%struct.TYPE_6__* %50, i32* %52, i32 -1, i64 %53)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.ccu_mult*, %struct.ccu_mult** %6, align 8
  %58 = getelementptr inbounds %struct.ccu_mult, %struct.ccu_mult* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %56, %60
  %62 = mul i64 %55, %61
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %23, %17
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local %struct.ccu_mult* @hw_to_ccu_mult(%struct.clk_hw*) #1

declare dso_local i64 @ccu_frac_helper_is_enabled(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @ccu_frac_helper_read_rate(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @ccu_mux_helper_apply_prediv(%struct.TYPE_6__*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
