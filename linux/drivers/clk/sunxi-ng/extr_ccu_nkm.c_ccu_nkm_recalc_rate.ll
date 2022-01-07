; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nkm.c_ccu_nkm_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nkm.c_ccu_nkm_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ccu_nkm = type { i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i64, i32, i64 }

@CCU_FEATURE_FIXED_POSTDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @ccu_nkm_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_nkm_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ccu_nkm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = call %struct.ccu_nkm* @hw_to_ccu_nkm(%struct.clk_hw* %11)
  store %struct.ccu_nkm* %12, %struct.ccu_nkm** %5, align 8
  %13 = load %struct.ccu_nkm*, %struct.ccu_nkm** %5, align 8
  %14 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ccu_nkm*, %struct.ccu_nkm** %5, align 8
  %18 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %16, %20
  %22 = call i64 @readl(i64 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.ccu_nkm*, %struct.ccu_nkm** %5, align 8
  %25 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = lshr i64 %23, %27
  store i64 %28, i64* %6, align 8
  %29 = load %struct.ccu_nkm*, %struct.ccu_nkm** %5, align 8
  %30 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 1, %32
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %6, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %6, align 8
  %38 = load %struct.ccu_nkm*, %struct.ccu_nkm** %5, align 8
  %39 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %2
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %46, %2
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.ccu_nkm*, %struct.ccu_nkm** %5, align 8
  %52 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = lshr i64 %50, %54
  store i64 %55, i64* %8, align 8
  %56 = load %struct.ccu_nkm*, %struct.ccu_nkm** %5, align 8
  %57 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 1, %59
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %8, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %8, align 8
  %65 = load %struct.ccu_nkm*, %struct.ccu_nkm** %5, align 8
  %66 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %49
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %73, %49
  %77 = load i64, i64* %10, align 8
  %78 = load %struct.ccu_nkm*, %struct.ccu_nkm** %5, align 8
  %79 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = lshr i64 %77, %81
  store i64 %82, i64* %7, align 8
  %83 = load %struct.ccu_nkm*, %struct.ccu_nkm** %5, align 8
  %84 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = shl i32 1, %86
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %7, align 8
  %91 = and i64 %90, %89
  store i64 %91, i64* %7, align 8
  %92 = load %struct.ccu_nkm*, %struct.ccu_nkm** %5, align 8
  %93 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %7, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %76
  %101 = load i64, i64* %7, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %7, align 8
  br label %103

103:                                              ; preds = %100, %76
  %104 = load i64, i64* %4, align 8
  %105 = load i64, i64* %6, align 8
  %106 = mul i64 %104, %105
  %107 = load i64, i64* %8, align 8
  %108 = mul i64 %106, %107
  %109 = load i64, i64* %7, align 8
  %110 = udiv i64 %108, %109
  store i64 %110, i64* %9, align 8
  %111 = load %struct.ccu_nkm*, %struct.ccu_nkm** %5, align 8
  %112 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %103
  %119 = load %struct.ccu_nkm*, %struct.ccu_nkm** %5, align 8
  %120 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %9, align 8
  %123 = udiv i64 %122, %121
  store i64 %123, i64* %9, align 8
  br label %124

124:                                              ; preds = %118, %103
  %125 = load i64, i64* %9, align 8
  ret i64 %125
}

declare dso_local %struct.ccu_nkm* @hw_to_ccu_nkm(%struct.clk_hw*) #1

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
