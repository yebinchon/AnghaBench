; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mp.c_ccu_mp_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mp.c_ccu_mp_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_mux_internal = type { i32 }
%struct.clk_hw = type { i32 }
%struct.ccu_mp = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@CCU_FEATURE_FIXED_POSTDIV = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ccu_mux_internal*, %struct.clk_hw*, i64*, i64, i8*)* @ccu_mp_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_mp_round_rate(%struct.ccu_mux_internal* %0, %struct.clk_hw* %1, i64* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.ccu_mux_internal*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ccu_mp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ccu_mux_internal* %0, %struct.ccu_mux_internal** %6, align 8
  store %struct.clk_hw* %1, %struct.clk_hw** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.ccu_mp*
  store %struct.ccu_mp* %17, %struct.ccu_mp** %11, align 8
  %18 = load %struct.ccu_mp*, %struct.ccu_mp** %11, align 8
  %19 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load %struct.ccu_mp*, %struct.ccu_mp** %11, align 8
  %27 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = mul i64 %29, %28
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %25, %5
  %32 = load %struct.ccu_mp*, %struct.ccu_mp** %11, align 8
  %33 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %45

38:                                               ; preds = %31
  %39 = load %struct.ccu_mp*, %struct.ccu_mp** %11, align 8
  %40 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 1, %42
  %44 = sext i32 %43 to i64
  br label %45

45:                                               ; preds = %38, %37
  %46 = phi i64 [ %35, %37 ], [ %44, %38 ]
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load %struct.ccu_mp*, %struct.ccu_mp** %11, align 8
  %49 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %63

54:                                               ; preds = %45
  %55 = load %struct.ccu_mp*, %struct.ccu_mp** %11, align 8
  %56 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 1, %58
  %60 = sub nsw i32 %59, 1
  %61 = shl i32 1, %60
  %62 = sext i32 %61 to i64
  br label %63

63:                                               ; preds = %54, %53
  %64 = phi i64 [ %51, %53 ], [ %62, %54 ]
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %13, align 4
  %66 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %67 = call i32 @clk_hw_get_flags(%struct.clk_hw* %66)
  %68 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %63
  %72 = load i64*, i64** %8, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @ccu_mp_find_best(i64 %73, i64 %74, i32 %75, i32 %76, i32* %14, i32* %15)
  %78 = load i64*, i64** %8, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = zext i32 %80 to i64
  %82 = udiv i64 %79, %81
  %83 = load i32, i32* %14, align 4
  %84 = zext i32 %83 to i64
  %85 = udiv i64 %82, %84
  store i64 %85, i64* %9, align 8
  br label %93

86:                                               ; preds = %63
  %87 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %88 = load i64*, i64** %8, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i64 @ccu_mp_find_best_with_parent_adj(%struct.clk_hw* %87, i64* %88, i64 %89, i32 %90, i32 %91)
  store i64 %92, i64* %9, align 8
  br label %93

93:                                               ; preds = %86, %71
  %94 = load %struct.ccu_mp*, %struct.ccu_mp** %11, align 8
  %95 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load %struct.ccu_mp*, %struct.ccu_mp** %11, align 8
  %103 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = udiv i64 %105, %104
  store i64 %106, i64* %9, align 8
  br label %107

107:                                              ; preds = %101, %93
  %108 = load i64, i64* %9, align 8
  ret i64 %108
}

declare dso_local i32 @clk_hw_get_flags(%struct.clk_hw*) #1

declare dso_local i32 @ccu_mp_find_best(i64, i64, i32, i32, i32*, i32*) #1

declare dso_local i64 @ccu_mp_find_best_with_parent_adj(%struct.clk_hw*, i64*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
