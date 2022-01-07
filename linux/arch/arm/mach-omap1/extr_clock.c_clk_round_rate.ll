; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_clk_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_clk_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@clockfw_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @clk_round_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk*, %struct.clk** %4, align 8
  %9 = icmp eq %struct.clk* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.clk*, %struct.clk** %4, align 8
  %12 = call i64 @IS_ERR(%struct.clk* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %2
  store i64 0, i64* %3, align 8
  br label %24

15:                                               ; preds = %10
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @clockfw_lock, i64 %16)
  %18 = load %struct.clk*, %struct.clk** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @omap1_clk_round_rate(%struct.clk* %18, i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* @clockfw_lock, i64 %21)
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %15, %14
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @omap1_clk_round_rate(%struct.clk*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
