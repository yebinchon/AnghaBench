; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_autoidle.c__omap2_clk_allow_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_autoidle.c__omap2_clk_allow_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw_omap = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@autoidle_spinlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw_omap*)* @_omap2_clk_allow_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omap2_clk_allow_idle(%struct.clk_hw_omap* %0) #0 {
  %2 = alloca %struct.clk_hw_omap*, align 8
  %3 = alloca i64, align 8
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %2, align 8
  %4 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %5 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  %9 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %10 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.clk_hw_omap*)**
  %14 = load i32 (%struct.clk_hw_omap*)*, i32 (%struct.clk_hw_omap*)** %13, align 8
  %15 = icmp ne i32 (%struct.clk_hw_omap*)* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_lock_irqsave(i32* @autoidle_spinlock, i64 %17)
  %19 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %20 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %24 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %29 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.clk_hw_omap*)**
  %33 = load i32 (%struct.clk_hw_omap*)*, i32 (%struct.clk_hw_omap*)** %32, align 8
  %34 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %35 = call i32 %33(%struct.clk_hw_omap* %34)
  br label %36

36:                                               ; preds = %27, %16
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* @autoidle_spinlock, i64 %37)
  br label %39

39:                                               ; preds = %36, %8, %1
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
