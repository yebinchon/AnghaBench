; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-aux-synth.c_clk_aux_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-aux-synth.c_clk_aux_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_aux = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_aux_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_aux_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_aux*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.clk_aux* @to_clk_aux(%struct.clk_hw* %12)
  store %struct.clk_aux* %13, %struct.clk_aux** %6, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i64 0, i64* %11, align 8
  %14 = load %struct.clk_aux*, %struct.clk_aux** %6, align 8
  %15 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.clk_aux*, %struct.clk_aux** %6, align 8
  %20 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @spin_lock_irqsave(i64 %21, i64 %22)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.clk_aux*, %struct.clk_aux** %6, align 8
  %26 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @readl_relaxed(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.clk_aux*, %struct.clk_aux** %6, align 8
  %30 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.clk_aux*, %struct.clk_aux** %6, align 8
  %35 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @spin_unlock_irqrestore(i64 %36, i64 %37)
  br label %39

39:                                               ; preds = %33, %24
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.clk_aux*, %struct.clk_aux** %6, align 8
  %42 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = lshr i32 %40, %45
  %47 = load %struct.clk_aux*, %struct.clk_aux** %6, align 8
  %48 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %46, %51
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.clk_aux*, %struct.clk_aux** %6, align 8
  %55 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %53, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %39
  store i32 2, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %39
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.clk_aux*, %struct.clk_aux** %6, align 8
  %64 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = lshr i32 %62, %67
  %69 = load %struct.clk_aux*, %struct.clk_aux** %6, align 8
  %70 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %68, %73
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.clk_aux*, %struct.clk_aux** %6, align 8
  %77 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = lshr i32 %75, %80
  %82 = load %struct.clk_aux*, %struct.clk_aux** %6, align 8
  %83 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %81, %86
  %88 = load i32, i32* %8, align 4
  %89 = mul i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %61
  store i64 0, i64* %3, align 8
  br label %103

93:                                               ; preds = %61
  %94 = load i64, i64* %5, align 8
  %95 = udiv i64 %94, 10000
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = mul i64 %95, %97
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = udiv i64 %98, %100
  %102 = mul i64 %101, 10000
  store i64 %102, i64* %3, align 8
  br label %103

103:                                              ; preds = %93, %92
  %104 = load i64, i64* %3, align 8
  ret i64 %104
}

declare dso_local %struct.clk_aux* @to_clk_aux(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
