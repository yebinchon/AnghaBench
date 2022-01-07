; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_data = type { i32 }
%struct.bcm_clk_div = type { i32 }

@LONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ccu_data*, %struct.bcm_clk_div*, %struct.bcm_clk_div*, i64)* @clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_recalc_rate(%struct.ccu_data* %0, %struct.bcm_clk_div* %1, %struct.bcm_clk_div* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ccu_data*, align 8
  %7 = alloca %struct.bcm_clk_div*, align 8
  %8 = alloca %struct.bcm_clk_div*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ccu_data* %0, %struct.ccu_data** %6, align 8
  store %struct.bcm_clk_div* %1, %struct.bcm_clk_div** %7, align 8
  store %struct.bcm_clk_div* %2, %struct.bcm_clk_div** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %7, align 8
  %15 = call i64 @divider_exists(%struct.bcm_clk_div* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %5, align 8
  br label %56

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @LONG_MAX, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i64 0, i64* %5, align 8
  br label %56

24:                                               ; preds = %19
  %25 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %26 = icmp ne %struct.bcm_clk_div* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %29 = call i64 @divider_exists(%struct.bcm_clk_div* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @scale_rate(%struct.bcm_clk_div* %32, i64 %33)
  store i64 %34, i64* %13, align 8
  %35 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %7, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i64 @scale_rate(%struct.bcm_clk_div* %35, i64 %36)
  store i64 %37, i64* %13, align 8
  %38 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %39 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %40 = call i64 @divider_read_scaled(%struct.ccu_data* %38, %struct.bcm_clk_div* %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i64 @DIV_ROUND_CLOSEST_ULL(i64 %41, i64 %42)
  store i64 %43, i64* %10, align 8
  br label %48

44:                                               ; preds = %27, %24
  %45 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @scale_rate(%struct.bcm_clk_div* %45, i64 %46)
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %44, %31
  %49 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %50 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %7, align 8
  %51 = call i64 @divider_read_scaled(%struct.ccu_data* %49, %struct.bcm_clk_div* %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @DIV_ROUND_CLOSEST_ULL(i64 %52, i64 %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %48, %23, %17
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local i64 @divider_exists(%struct.bcm_clk_div*) #1

declare dso_local i64 @scale_rate(%struct.bcm_clk_div*, i64) #1

declare dso_local i64 @divider_read_scaled(%struct.ccu_data*, %struct.bcm_clk_div*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST_ULL(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
