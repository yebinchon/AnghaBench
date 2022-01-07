; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mp.c_ccu_mp_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mp.c_ccu_mp_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ccu_mp = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@CCU_FEATURE_FIXED_POSTDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @ccu_mp_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_mp_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ccu_mp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.ccu_mp* @hw_to_ccu_mp(%struct.clk_hw* %10)
  store %struct.ccu_mp* %11, %struct.ccu_mp** %5, align 8
  %12 = load %struct.ccu_mp*, %struct.ccu_mp** %5, align 8
  %13 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %12, i32 0, i32 1
  %14 = load %struct.ccu_mp*, %struct.ccu_mp** %5, align 8
  %15 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %14, i32 0, i32 4
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @ccu_mux_helper_apply_prediv(%struct.TYPE_6__* %13, i32* %15, i32 -1, i64 %16)
  store i64 %17, i64* %4, align 8
  %18 = load %struct.ccu_mp*, %struct.ccu_mp** %5, align 8
  %19 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ccu_mp*, %struct.ccu_mp** %5, align 8
  %23 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %21, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.ccu_mp*, %struct.ccu_mp** %5, align 8
  %30 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = lshr i32 %28, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ccu_mp*, %struct.ccu_mp** %5, align 8
  %35 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 1, %37
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ccu_mp*, %struct.ccu_mp** %5, align 8
  %43 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %2
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %52, %2
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.ccu_mp*, %struct.ccu_mp** %5, align 8
  %58 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = lshr i32 %56, %60
  store i32 %61, i32* %8, align 4
  %62 = load %struct.ccu_mp*, %struct.ccu_mp** %5, align 8
  %63 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 1, %65
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i64, i64* %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = lshr i64 %70, %72
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = udiv i64 %73, %75
  store i64 %76, i64* %6, align 8
  %77 = load %struct.ccu_mp*, %struct.ccu_mp** %5, align 8
  %78 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %55
  %85 = load %struct.ccu_mp*, %struct.ccu_mp** %5, align 8
  %86 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = udiv i64 %88, %87
  store i64 %89, i64* %6, align 8
  br label %90

90:                                               ; preds = %84, %55
  %91 = load i64, i64* %6, align 8
  ret i64 %91
}

declare dso_local %struct.ccu_mp* @hw_to_ccu_mp(%struct.clk_hw*) #1

declare dso_local i64 @ccu_mux_helper_apply_prediv(%struct.TYPE_6__*, i32*, i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
