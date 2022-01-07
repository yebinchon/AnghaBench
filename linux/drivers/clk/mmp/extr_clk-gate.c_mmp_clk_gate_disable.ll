; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-gate.c_mmp_clk_gate_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-gate.c_mmp_clk_gate_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mmp_clk_gate = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @mmp_clk_gate_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmp_clk_gate_disable(%struct.clk_hw* %0) #0 {
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
  %9 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %14 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i64 %15, i64 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %20 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @readl(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %24 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %30 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %36 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @writel(i32 %34, i32 %37)
  %39 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %40 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %18
  %44 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %45 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_unlock_irqrestore(i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %43, %18
  ret void
}

declare dso_local %struct.mmp_clk_gate* @to_clk_mmp_gate(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
