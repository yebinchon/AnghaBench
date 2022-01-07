; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hisi-phase.c_hisi_clk_set_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hisi-phase.c_hisi_clk_set_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_hisi_phase = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @hisi_clk_set_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_clk_set_phase(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_hisi_phase*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_hisi_phase* @to_clk_hisi_phase(%struct.clk_hw* %10)
  store %struct.clk_hisi_phase* %11, %struct.clk_hisi_phase** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.clk_hisi_phase*, %struct.clk_hisi_phase** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @hisi_phase_degrees_to_regval(%struct.clk_hisi_phase* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.clk_hisi_phase*, %struct.clk_hisi_phase** %6, align 8
  %21 = getelementptr inbounds %struct.clk_hisi_phase, %struct.clk_hisi_phase* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @spin_lock_irqsave(i32 %22, i64 %23)
  %25 = load %struct.clk_hisi_phase*, %struct.clk_hisi_phase** %6, align 8
  %26 = getelementptr inbounds %struct.clk_hisi_phase, %struct.clk_hisi_phase* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @readl(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.clk_hisi_phase*, %struct.clk_hisi_phase** %6, align 8
  %30 = getelementptr inbounds %struct.clk_hisi_phase, %struct.clk_hisi_phase* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.clk_hisi_phase*, %struct.clk_hisi_phase** %6, align 8
  %37 = getelementptr inbounds %struct.clk_hisi_phase, %struct.clk_hisi_phase* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %35, %38
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.clk_hisi_phase*, %struct.clk_hisi_phase** %6, align 8
  %44 = getelementptr inbounds %struct.clk_hisi_phase, %struct.clk_hisi_phase* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @writel(i32 %42, i32 %45)
  %47 = load %struct.clk_hisi_phase*, %struct.clk_hisi_phase** %6, align 8
  %48 = getelementptr inbounds %struct.clk_hisi_phase, %struct.clk_hisi_phase* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32 %49, i64 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %19, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.clk_hisi_phase* @to_clk_hisi_phase(%struct.clk_hw*) #1

declare dso_local i32 @hisi_phase_degrees_to_regval(%struct.clk_hisi_phase*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
