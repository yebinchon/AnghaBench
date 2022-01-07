; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mux.c_mtk_clk_mux_set_parent_setclr_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mux.c_mtk_clk_mux_set_parent_setclr_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mtk_clk_mux = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @mtk_clk_mux_set_parent_setclr_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_clk_mux_set_parent_setclr_lock(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_clk_mux*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.mtk_clk_mux* @to_mtk_clk_mux(%struct.clk_hw* %10)
  store %struct.mtk_clk_mux* %11, %struct.mtk_clk_mux** %5, align 8
  %12 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %13 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 1
  %18 = call i32 @GENMASK(i64 %17, i32 0)
  store i32 %18, i32* %6, align 4
  store i64 0, i64* %9, align 8
  %19 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %20 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %25 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_lock_irqsave(i64 %26, i64 %27)
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %31 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @__acquire(i64 %32)
  br label %34

34:                                               ; preds = %29, %23
  %35 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %36 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %39 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regmap_read(i32 %37, i32 %42, i32* %8)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %47 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 %45, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %44, %52
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %56 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 %54, %59
  %61 = or i32 %53, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %121

65:                                               ; preds = %34
  %66 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %67 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %70 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %76 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 %74, %79
  %81 = call i32 @regmap_write(i32 %68, i32 %73, i32 %80)
  %82 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %83 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %86 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %92 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = shl i32 %90, %95
  %97 = call i32 @regmap_write(i32 %84, i32 %89, i32 %96)
  %98 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %99 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %65
  %105 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %106 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %109 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %114 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @BIT(i64 %117)
  %119 = call i32 @regmap_write(i32 %107, i32 %112, i32 %118)
  br label %120

120:                                              ; preds = %104, %65
  br label %121

121:                                              ; preds = %120, %34
  %122 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %123 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %128 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = call i32 @spin_unlock_irqrestore(i64 %129, i64 %130)
  br label %137

132:                                              ; preds = %121
  %133 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %5, align 8
  %134 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @__release(i64 %135)
  br label %137

137:                                              ; preds = %132, %126
  ret i32 0
}

declare dso_local %struct.mtk_clk_mux* @to_mtk_clk_mux(%struct.clk_hw*) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @__acquire(i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i32 @__release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
