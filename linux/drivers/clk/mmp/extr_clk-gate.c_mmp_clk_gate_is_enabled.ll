; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-gate.c_mmp_clk_gate_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-gate.c_mmp_clk_gate_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mmp_clk_gate = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @mmp_clk_gate_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_clk_gate_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.mmp_clk_gate*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.mmp_clk_gate* @to_clk_mmp_gate(%struct.clk_hw* %6)
  store %struct.mmp_clk_gate* %7, %struct.mmp_clk_gate** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %9 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %14 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i64 %15, i64 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %20 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @readl(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %24 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %29 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i64 %30, i64 %31)
  br label %33

33:                                               ; preds = %27, %18
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %36 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %34, %37
  %39 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %40 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local %struct.mmp_clk_gate* @to_clk_mmp_gate(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
