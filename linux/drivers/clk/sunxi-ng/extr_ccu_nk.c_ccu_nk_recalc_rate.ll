; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nk.c_ccu_nk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nk.c_ccu_nk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ccu_nk = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i64, i32, i64 }

@CCU_FEATURE_FIXED_POSTDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @ccu_nk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_nk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ccu_nk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.ccu_nk* @hw_to_ccu_nk(%struct.clk_hw* %10)
  store %struct.ccu_nk* %11, %struct.ccu_nk** %5, align 8
  %12 = load %struct.ccu_nk*, %struct.ccu_nk** %5, align 8
  %13 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ccu_nk*, %struct.ccu_nk** %5, align 8
  %17 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %15, %19
  %21 = call i64 @readl(i64 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.ccu_nk*, %struct.ccu_nk** %5, align 8
  %24 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = lshr i64 %22, %26
  store i64 %27, i64* %7, align 8
  %28 = load %struct.ccu_nk*, %struct.ccu_nk** %5, align 8
  %29 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 1, %31
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %7, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %7, align 8
  %37 = load %struct.ccu_nk*, %struct.ccu_nk** %5, align 8
  %38 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %2
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %45, %2
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.ccu_nk*, %struct.ccu_nk** %5, align 8
  %51 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = lshr i64 %49, %53
  store i64 %54, i64* %8, align 8
  %55 = load %struct.ccu_nk*, %struct.ccu_nk** %5, align 8
  %56 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 1, %58
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %8, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %8, align 8
  %64 = load %struct.ccu_nk*, %struct.ccu_nk** %5, align 8
  %65 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %48
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %72, %48
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* %7, align 8
  %78 = mul i64 %76, %77
  %79 = load i64, i64* %8, align 8
  %80 = mul i64 %78, %79
  store i64 %80, i64* %6, align 8
  %81 = load %struct.ccu_nk*, %struct.ccu_nk** %5, align 8
  %82 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %75
  %89 = load %struct.ccu_nk*, %struct.ccu_nk** %5, align 8
  %90 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = udiv i64 %92, %91
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %88, %75
  %95 = load i64, i64* %6, align 8
  ret i64 %95
}

declare dso_local %struct.ccu_nk* @hw_to_ccu_nk(%struct.clk_hw*) #1

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
