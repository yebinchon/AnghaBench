; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/x86/extr_clk-pmc-atom.c_plt_clk_reg_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/x86/extr_clk-pmc-atom.c_plt_clk_reg_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_plt = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_plt*, i32, i32)* @plt_clk_reg_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plt_clk_reg_update(%struct.clk_plt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.clk_plt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.clk_plt* %0, %struct.clk_plt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.clk_plt*, %struct.clk_plt** %4, align 8
  %10 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %9, i32 0, i32 0
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.clk_plt*, %struct.clk_plt** %4, align 8
  %14 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @readl(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %21, %22
  %24 = or i32 %20, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.clk_plt*, %struct.clk_plt** %4, align 8
  %27 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @writel(i32 %25, i32 %28)
  %30 = load %struct.clk_plt*, %struct.clk_plt** %4, align 8
  %31 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %30, i32 0, i32 0
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
