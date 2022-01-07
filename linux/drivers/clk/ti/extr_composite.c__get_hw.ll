; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_composite.c__get_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_composite.c__get_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_hw_omap_comp = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.clk_hw* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.clk_hw_omap_comp*, i32)* @_get_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @_get_hw(%struct.clk_hw_omap_comp* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_hw_omap_comp*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw_omap_comp* %0, %struct.clk_hw_omap_comp** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.clk_hw_omap_comp*, %struct.clk_hw_omap_comp** %4, align 8
  %7 = icmp ne %struct.clk_hw_omap_comp* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.clk_hw* null, %struct.clk_hw** %3, align 8
  br label %29

9:                                                ; preds = %2
  %10 = load %struct.clk_hw_omap_comp*, %struct.clk_hw_omap_comp** %4, align 8
  %11 = getelementptr inbounds %struct.clk_hw_omap_comp, %struct.clk_hw_omap_comp* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  store %struct.clk_hw* null, %struct.clk_hw** %3, align 8
  br label %29

19:                                               ; preds = %9
  %20 = load %struct.clk_hw_omap_comp*, %struct.clk_hw_omap_comp** %4, align 8
  %21 = getelementptr inbounds %struct.clk_hw_omap_comp, %struct.clk_hw_omap_comp* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.clk_hw*, %struct.clk_hw** %27, align 8
  store %struct.clk_hw* %28, %struct.clk_hw** %3, align 8
  br label %29

29:                                               ; preds = %19, %18, %8
  %30 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  ret %struct.clk_hw* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
