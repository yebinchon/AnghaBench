; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/arch/arm/mach-mcs814x/extr_clock.c_clk_get_parent.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/arch/arm/mach-mcs814x/extr_clock.c_clk_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.clk*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@clocks_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @clk_get_parent(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %5 = load %struct.clk*, %struct.clk** %3, align 8
  %6 = call i32 @IS_ERR_OR_NULL(%struct.clk* %5)
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.clk* null, %struct.clk** %2, align 8
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.clk*, %struct.clk** %3, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.clk*, %struct.clk** %3, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to %struct.clk* (%struct.clk*)**
  %21 = load %struct.clk* (%struct.clk*)*, %struct.clk* (%struct.clk*)** %20, align 8
  %22 = icmp ne %struct.clk* (%struct.clk*)* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15, %10
  %24 = load %struct.clk*, %struct.clk** %3, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 0
  %26 = load %struct.clk*, %struct.clk** %25, align 8
  store %struct.clk* %26, %struct.clk** %2, align 8
  br label %45

27:                                               ; preds = %15
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_lock_irqsave(i32* @clocks_lock, i64 %28)
  %30 = load %struct.clk*, %struct.clk** %3, align 8
  %31 = getelementptr inbounds %struct.clk, %struct.clk* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to %struct.clk* (%struct.clk*)**
  %35 = load %struct.clk* (%struct.clk*)*, %struct.clk* (%struct.clk*)** %34, align 8
  %36 = load %struct.clk*, %struct.clk** %3, align 8
  %37 = call %struct.clk* %35(%struct.clk* %36)
  %38 = load %struct.clk*, %struct.clk** %3, align 8
  %39 = getelementptr inbounds %struct.clk, %struct.clk* %38, i32 0, i32 0
  store %struct.clk* %37, %struct.clk** %39, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* @clocks_lock, i64 %40)
  %42 = load %struct.clk*, %struct.clk** %3, align 8
  %43 = getelementptr inbounds %struct.clk, %struct.clk* %42, i32 0, i32 0
  %44 = load %struct.clk*, %struct.clk** %43, align 8
  store %struct.clk* %44, %struct.clk** %2, align 8
  br label %45

45:                                               ; preds = %27, %23, %9
  %46 = load %struct.clk*, %struct.clk** %2, align 8
  ret %struct.clk* %46
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.clk*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
