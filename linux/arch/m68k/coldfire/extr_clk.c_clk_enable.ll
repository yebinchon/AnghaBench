; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_clk.c_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_clk.c_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@clk_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_enable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @clk_lock, i64 %4)
  %6 = load %struct.clk*, %struct.clk** %2, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 8
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.clk*, %struct.clk** %2, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.clk*, %struct.clk** %2, align 8
  %18 = getelementptr inbounds %struct.clk, %struct.clk* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.clk*)**
  %22 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %21, align 8
  %23 = load %struct.clk*, %struct.clk** %2, align 8
  %24 = call i32 %22(%struct.clk* %23)
  br label %25

25:                                               ; preds = %16, %11, %1
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* @clk_lock, i64 %26)
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
