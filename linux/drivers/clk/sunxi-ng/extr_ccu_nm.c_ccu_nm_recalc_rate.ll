; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nm.c_ccu_nm_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nm.c_ccu_nm_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ccu_nm = type { i64, %struct.TYPE_9__, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.TYPE_7__ = type { i64, i32, i64 }

@CCU_FEATURE_FIXED_POSTDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @ccu_nm_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_nm_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ccu_nm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.ccu_nm* @hw_to_ccu_nm(%struct.clk_hw* %11)
  store %struct.ccu_nm* %12, %struct.ccu_nm** %6, align 8
  %13 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %14 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %13, i32 0, i32 1
  %15 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %16 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %15, i32 0, i32 5
  %17 = call i64 @ccu_frac_helper_is_enabled(%struct.TYPE_9__* %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %2
  %20 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %21 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %20, i32 0, i32 1
  %22 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %23 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %22, i32 0, i32 5
  %24 = call i64 @ccu_frac_helper_read_rate(%struct.TYPE_9__* %21, i32* %23)
  store i64 %24, i64* %7, align 8
  %25 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %26 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %19
  %33 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %34 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = udiv i64 %36, %35
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %32, %19
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %3, align 8
  br label %140

40:                                               ; preds = %2
  %41 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %42 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %46 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %44, %48
  %50 = call i64 @readl(i64 %49)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %53 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = lshr i64 %51, %55
  store i64 %56, i64* %8, align 8
  %57 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %58 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 1, %60
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %8, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %67 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %40
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %74, %40
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %80 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = lshr i64 %78, %82
  store i64 %83, i64* %9, align 8
  %84 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %85 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 1, %87
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %9, align 8
  %92 = and i64 %91, %90
  store i64 %92, i64* %9, align 8
  %93 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %94 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %9, align 8
  %99 = load i64, i64* %9, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %77
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %101, %77
  %105 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %106 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %105, i32 0, i32 1
  %107 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %108 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %107, i32 0, i32 2
  %109 = call i64 @ccu_sdm_helper_is_enabled(%struct.TYPE_9__* %106, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %113 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %112, i32 0, i32 1
  %114 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %115 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %114, i32 0, i32 2
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %8, align 8
  %118 = call i64 @ccu_sdm_helper_read_rate(%struct.TYPE_9__* %113, i32* %115, i64 %116, i64 %117)
  store i64 %118, i64* %7, align 8
  br label %124

119:                                              ; preds = %104
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %9, align 8
  %123 = call i64 @ccu_nm_calc_rate(i64 %120, i64 %121, i64 %122)
  store i64 %123, i64* %7, align 8
  br label %124

124:                                              ; preds = %119, %111
  %125 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %126 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load %struct.ccu_nm*, %struct.ccu_nm** %6, align 8
  %134 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %7, align 8
  %137 = udiv i64 %136, %135
  store i64 %137, i64* %7, align 8
  br label %138

138:                                              ; preds = %132, %124
  %139 = load i64, i64* %7, align 8
  store i64 %139, i64* %3, align 8
  br label %140

140:                                              ; preds = %138, %38
  %141 = load i64, i64* %3, align 8
  ret i64 %141
}

declare dso_local %struct.ccu_nm* @hw_to_ccu_nm(%struct.clk_hw*) #1

declare dso_local i64 @ccu_frac_helper_is_enabled(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @ccu_frac_helper_read_rate(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @ccu_sdm_helper_is_enabled(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @ccu_sdm_helper_read_rate(%struct.TYPE_9__*, i32*, i64, i64) #1

declare dso_local i64 @ccu_nm_calc_rate(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
