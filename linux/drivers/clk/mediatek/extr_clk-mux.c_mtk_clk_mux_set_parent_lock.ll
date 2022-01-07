; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mux.c_mtk_clk_mux_set_parent_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mux.c_mtk_clk_mux_set_parent_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mtk_clk_mux = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @mtk_clk_mux_set_parent_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_clk_mux_set_parent_lock(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_clk_mux*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.mtk_clk_mux* @to_mtk_clk_mux(%struct.clk_hw* %8)
  store %struct.mtk_clk_mux* %9, %struct.mtk_clk_mux** %5, align 8
  %10 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %11 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, 1
  %16 = call i32 @GENMASK(i64 %15, i32 0)
  store i32 %16, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %17 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %18 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %23 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_lock_irqsave(i64 %24, i64 %25)
  br label %32

27:                                               ; preds = %2
  %28 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %29 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @__acquire(i64 %30)
  br label %32

32:                                               ; preds = %27, %21
  %33 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %34 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %37 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %44 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %42, %47
  %49 = call i32 @regmap_update_bits(i32 %35, i32 %40, i32 %41, i32 %48)
  %50 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %51 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %32
  %55 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %56 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_unlock_irqrestore(i64 %57, i64 %58)
  br label %65

60:                                               ; preds = %32
  %61 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %62 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @__release(i64 %63)
  br label %65

65:                                               ; preds = %60, %54
  ret i32 0
}

declare dso_local %struct.mtk_clk_mux* @to_mtk_clk_mux(%struct.clk_hw*) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @__acquire(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i32 @__release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
