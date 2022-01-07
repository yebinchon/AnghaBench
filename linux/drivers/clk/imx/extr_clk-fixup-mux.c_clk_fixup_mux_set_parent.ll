; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-fixup-mux.c_clk_fixup_mux_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-fixup-mux.c_clk_fixup_mux_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_fixup_mux = type { i32 (i32*)* }
%struct.clk_mux = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @clk_fixup_mux_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_fixup_mux_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_fixup_mux*, align 8
  %6 = alloca %struct.clk_mux*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.clk_fixup_mux* @to_clk_fixup_mux(%struct.clk_hw* %9)
  store %struct.clk_fixup_mux* %10, %struct.clk_fixup_mux** %5, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = call %struct.clk_mux* @to_clk_mux(%struct.clk_hw* %11)
  store %struct.clk_mux* %12, %struct.clk_mux** %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load %struct.clk_mux*, %struct.clk_mux** %6, align 8
  %14 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load %struct.clk_mux*, %struct.clk_mux** %6, align 8
  %19 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @readl(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.clk_mux*, %struct.clk_mux** %6, align 8
  %23 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.clk_mux*, %struct.clk_mux** %6, align 8
  %26 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %24, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.clk_mux*, %struct.clk_mux** %6, align 8
  %34 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %32, %35
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.clk_fixup_mux*, %struct.clk_fixup_mux** %5, align 8
  %40 = getelementptr inbounds %struct.clk_fixup_mux, %struct.clk_fixup_mux* %39, i32 0, i32 0
  %41 = load i32 (i32*)*, i32 (i32*)** %40, align 8
  %42 = call i32 %41(i32* %8)
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.clk_mux*, %struct.clk_mux** %6, align 8
  %45 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @writel(i32 %43, i32 %46)
  %48 = load %struct.clk_mux*, %struct.clk_mux** %6, align 8
  %49 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32 %50, i64 %51)
  ret i32 0
}

declare dso_local %struct.clk_fixup_mux* @to_clk_fixup_mux(%struct.clk_hw*) #1

declare dso_local %struct.clk_mux* @to_clk_mux(%struct.clk_hw*) #1

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
