; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_div.c_ccu_div_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_div.c_ccu_div_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_mux_internal = type { i32 }
%struct.clk_hw = type { i32 }
%struct.ccu_div = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@CCU_FEATURE_FIXED_POSTDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ccu_mux_internal*, %struct.clk_hw*, i64*, i64, i8*)* @ccu_div_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_div_round_rate(%struct.ccu_mux_internal* %0, %struct.clk_hw* %1, i64* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.ccu_mux_internal*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ccu_div*, align 8
  store %struct.ccu_mux_internal* %0, %struct.ccu_mux_internal** %6, align 8
  store %struct.clk_hw* %1, %struct.clk_hw** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to %struct.ccu_div*
  store %struct.ccu_div* %13, %struct.ccu_div** %11, align 8
  %14 = load %struct.ccu_div*, %struct.ccu_div** %11, align 8
  %15 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load %struct.ccu_div*, %struct.ccu_div** %11, align 8
  %23 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = mul i64 %25, %24
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %21, %5
  %28 = load %struct.ccu_div*, %struct.ccu_div** %11, align 8
  %29 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = load %struct.ccu_div*, %struct.ccu_div** %11, align 8
  %35 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ccu_div*, %struct.ccu_div** %11, align 8
  %39 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ccu_div*, %struct.ccu_div** %11, align 8
  %43 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @divider_round_rate_parent(i32* %30, %struct.clk_hw* %31, i64 %32, i64* %33, i32 %37, i32 %41, i32 %45)
  store i64 %46, i64* %9, align 8
  %47 = load %struct.ccu_div*, %struct.ccu_div** %11, align 8
  %48 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %27
  %55 = load %struct.ccu_div*, %struct.ccu_div** %11, align 8
  %56 = getelementptr inbounds %struct.ccu_div, %struct.ccu_div* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = udiv i64 %58, %57
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %54, %27
  %61 = load i64, i64* %9, align 8
  ret i64 %61
}

declare dso_local i64 @divider_round_rate_parent(i32*, %struct.clk_hw*, i64, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
