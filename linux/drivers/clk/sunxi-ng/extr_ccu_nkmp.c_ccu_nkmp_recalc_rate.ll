; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nkmp.c_ccu_nkmp_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nkmp.c_ccu_nkmp_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ccu_nkmp = type { i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.TYPE_6__ = type { i64, i32, i64 }

@CCU_FEATURE_FIXED_POSTDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @ccu_nkmp_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_nkmp_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ccu_nkmp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %13 = call %struct.ccu_nkmp* @hw_to_ccu_nkmp(%struct.clk_hw* %12)
  store %struct.ccu_nkmp* %13, %struct.ccu_nkmp** %5, align 8
  %14 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %5, align 8
  %15 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %5, align 8
  %19 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %17, %21
  %23 = call i64 @readl(i64 %22)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %5, align 8
  %26 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = lshr i64 %24, %28
  store i64 %29, i64* %6, align 8
  %30 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %5, align 8
  %31 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 1, %33
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %6, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %6, align 8
  %39 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %5, align 8
  %40 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %2
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %47, %2
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %5, align 8
  %53 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = lshr i64 %51, %55
  store i64 %56, i64* %8, align 8
  %57 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %5, align 8
  %58 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 1, %60
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %8, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %5, align 8
  %67 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %50
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %74, %50
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %5, align 8
  %80 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = lshr i64 %78, %82
  store i64 %83, i64* %7, align 8
  %84 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %5, align 8
  %85 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 1, %87
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %7, align 8
  %92 = and i64 %91, %90
  store i64 %92, i64* %7, align 8
  %93 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %5, align 8
  %94 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %77
  %102 = load i64, i64* %7, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %101, %77
  %105 = load i64, i64* %11, align 8
  %106 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %5, align 8
  %107 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = lshr i64 %105, %109
  store i64 %110, i64* %9, align 8
  %111 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %5, align 8
  %112 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = shl i32 1, %114
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %9, align 8
  %119 = and i64 %118, %117
  store i64 %119, i64* %9, align 8
  %120 = load i64, i64* %4, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* %9, align 8
  %125 = trunc i64 %124 to i32
  %126 = shl i32 1, %125
  %127 = call i64 @ccu_nkmp_calc_rate(i64 %120, i64 %121, i64 %122, i64 %123, i32 %126)
  store i64 %127, i64* %10, align 8
  %128 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %5, align 8
  %129 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %104
  %136 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %5, align 8
  %137 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = udiv i64 %139, %138
  store i64 %140, i64* %10, align 8
  br label %141

141:                                              ; preds = %135, %104
  %142 = load i64, i64* %10, align 8
  ret i64 %142
}

declare dso_local %struct.ccu_nkmp* @hw_to_ccu_nkmp(%struct.clk_hw*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @ccu_nkmp_calc_rate(i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
