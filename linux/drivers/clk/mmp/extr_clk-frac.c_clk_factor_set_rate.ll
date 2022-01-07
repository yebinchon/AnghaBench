; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-frac.c_clk_factor_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-frac.c_clk_factor_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mmp_clk_factor = type { i32, i64, i32, %struct.TYPE_2__*, %struct.mmp_clk_factor_masks* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.mmp_clk_factor_masks = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_factor_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_factor_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mmp_clk_factor*, align 8
  %8 = alloca %struct.mmp_clk_factor_masks*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %14 = call %struct.mmp_clk_factor* @to_clk_factor(%struct.clk_hw* %13)
  store %struct.mmp_clk_factor* %14, %struct.mmp_clk_factor** %7, align 8
  %15 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %7, align 8
  %16 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %15, i32 0, i32 4
  %17 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %16, align 8
  store %struct.mmp_clk_factor_masks* %17, %struct.mmp_clk_factor_masks** %8, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %57, %3
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %7, align 8
  %21 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = udiv i64 %25, 10000
  %27 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %7, align 8
  %28 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 %26, %34
  %36 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %7, align 8
  %37 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %7, align 8
  %45 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %44, i32 0, i32 4
  %46 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %45, align 8
  %47 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = mul i64 %43, %48
  %50 = udiv i64 %35, %49
  %51 = mul i64 %50, 10000
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %24
  br label %60

56:                                               ; preds = %24
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %18

60:                                               ; preds = %55, %18
  %61 = load i32, i32* %9, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %7, align 8
  %68 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %7, align 8
  %73 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @spin_lock_irqsave(i64 %74, i64 %75)
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %7, align 8
  %79 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @readl_relaxed(i32 %80)
  store i64 %81, i64* %10, align 8
  %82 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %8, align 8
  %83 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %8, align 8
  %86 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = shl i64 %84, %87
  %89 = xor i64 %88, -1
  %90 = load i64, i64* %10, align 8
  %91 = and i64 %90, %89
  store i64 %91, i64* %10, align 8
  %92 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %7, align 8
  %93 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %8, align 8
  %101 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = and i64 %99, %102
  %104 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %8, align 8
  %105 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = shl i64 %103, %106
  %108 = load i64, i64* %10, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %10, align 8
  %110 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %8, align 8
  %111 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %8, align 8
  %114 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = shl i64 %112, %115
  %117 = xor i64 %116, -1
  %118 = load i64, i64* %10, align 8
  %119 = and i64 %118, %117
  store i64 %119, i64* %10, align 8
  %120 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %7, align 8
  %121 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %120, i32 0, i32 3
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %8, align 8
  %129 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = and i64 %127, %130
  %132 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %8, align 8
  %133 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = shl i64 %131, %134
  %136 = load i64, i64* %10, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %10, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %7, align 8
  %140 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @writel_relaxed(i64 %138, i32 %141)
  %143 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %7, align 8
  %144 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %77
  %148 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %7, align 8
  %149 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %12, align 8
  %152 = call i32 @spin_unlock_irqrestore(i64 %150, i64 %151)
  br label %153

153:                                              ; preds = %147, %77
  ret i32 0
}

declare dso_local %struct.mmp_clk_factor* @to_clk_factor(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
