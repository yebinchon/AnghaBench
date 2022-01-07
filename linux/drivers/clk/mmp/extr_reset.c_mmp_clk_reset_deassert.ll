; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_reset.c_mmp_clk_reset_deassert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_reset.c_mmp_clk_reset_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.mmp_clk_reset_unit = type { %struct.mmp_clk_reset_cell* }
%struct.mmp_clk_reset_cell = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @mmp_clk_reset_deassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_clk_reset_deassert(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.reset_controller_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mmp_clk_reset_unit*, align 8
  %6 = alloca %struct.mmp_clk_reset_cell*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %3, align 8
  %10 = call %struct.mmp_clk_reset_unit* @rcdev_to_unit(%struct.reset_controller_dev* %9)
  store %struct.mmp_clk_reset_unit* %10, %struct.mmp_clk_reset_unit** %5, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.mmp_clk_reset_unit*, %struct.mmp_clk_reset_unit** %5, align 8
  %12 = getelementptr inbounds %struct.mmp_clk_reset_unit, %struct.mmp_clk_reset_unit* %11, i32 0, i32 0
  %13 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %13, i64 %14
  store %struct.mmp_clk_reset_cell* %15, %struct.mmp_clk_reset_cell** %6, align 8
  %16 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %6, align 8
  %17 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %6, align 8
  %22 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i64 %23, i64 %24)
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %6, align 8
  %28 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @readl(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %6, align 8
  %32 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %6, align 8
  %39 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @writel(i32 %37, i32 %40)
  %42 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %6, align 8
  %43 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %26
  %47 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %6, align 8
  %48 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i64 %49, i64 %50)
  br label %52

52:                                               ; preds = %46, %26
  ret i32 0
}

declare dso_local %struct.mmp_clk_reset_unit* @rcdev_to_unit(%struct.reset_controller_dev*) #1

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
