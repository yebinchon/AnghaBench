; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-vt8500.c_vt8500_dclk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-vt8500.c_vt8500_dclk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_device = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @vt8500_dclk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500_dclk_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_device* @to_clk_device(%struct.clk_hw* %6)
  store %struct.clk_device* %7, %struct.clk_device** %3, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.clk_device*, %struct.clk_device** %3, align 8
  %9 = getelementptr inbounds %struct.clk_device, %struct.clk_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.clk_device*, %struct.clk_device** %3, align 8
  %14 = getelementptr inbounds %struct.clk_device, %struct.clk_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @readl(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.clk_device*, %struct.clk_device** %3, align 8
  %18 = getelementptr inbounds %struct.clk_device, %struct.clk_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.clk_device*, %struct.clk_device** %3, align 8
  %25 = getelementptr inbounds %struct.clk_device, %struct.clk_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @writel(i32 %23, i32 %26)
  %28 = load %struct.clk_device*, %struct.clk_device** %3, align 8
  %29 = getelementptr inbounds %struct.clk_device, %struct.clk_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32 %30, i64 %31)
  ret i32 0
}

declare dso_local %struct.clk_device* @to_clk_device(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
