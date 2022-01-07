; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-gate.c_mmp_clk_gate_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-gate.c_mmp_clk_gate_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mmp_clk_gate = type { i32, i64, i32, i32, i32 }

@MMP_CLK_GATE_NEED_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @mmp_clk_gate_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_clk_gate_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.mmp_clk_gate*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.mmp_clk_gate* @to_clk_mmp_gate(%struct.clk_hw* %7)
  store %struct.mmp_clk_gate* %8, %struct.mmp_clk_gate** %3, align 8
  store i64 0, i64* %4, align 8
  %9 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %10 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %15 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i64 %16, i64 %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %21 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @readl(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %25 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %31 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %37 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @writel(i32 %35, i32 %38)
  %40 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %41 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %19
  %45 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %46 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @spin_unlock_irqrestore(i64 %47, i64 %48)
  br label %50

50:                                               ; preds = %44, %19
  %51 = load %struct.mmp_clk_gate*, %struct.mmp_clk_gate** %3, align 8
  %52 = getelementptr inbounds %struct.mmp_clk_gate, %struct.mmp_clk_gate* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MMP_CLK_GATE_NEED_DELAY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %59 = call i64 @clk_hw_get_rate(%struct.clk_hw* %58)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = udiv i64 2000000, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32 @udelay(i32 %62)
  br label %64

64:                                               ; preds = %57, %50
  ret i32 0
}

declare dso_local %struct.mmp_clk_gate* @to_clk_mmp_gate(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
