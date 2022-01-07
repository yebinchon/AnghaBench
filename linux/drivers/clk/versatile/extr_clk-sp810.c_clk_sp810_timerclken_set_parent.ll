; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-sp810.c_clk_sp810_timerclken_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-sp810.c_clk_sp810_timerclken_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_sp810_timerclken = type { i32, %struct.clk_sp810* }
%struct.clk_sp810 = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SCCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @clk_sp810_timerclken_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sp810_timerclken_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_sp810_timerclken*, align 8
  %7 = alloca %struct.clk_sp810*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.clk_sp810_timerclken* @to_clk_sp810_timerclken(%struct.clk_hw* %11)
  store %struct.clk_sp810_timerclken* %12, %struct.clk_sp810_timerclken** %6, align 8
  %13 = load %struct.clk_sp810_timerclken*, %struct.clk_sp810_timerclken** %6, align 8
  %14 = getelementptr inbounds %struct.clk_sp810_timerclken, %struct.clk_sp810_timerclken* %13, i32 0, i32 1
  %15 = load %struct.clk_sp810*, %struct.clk_sp810** %14, align 8
  store %struct.clk_sp810* %15, %struct.clk_sp810** %7, align 8
  %16 = load %struct.clk_sp810_timerclken*, %struct.clk_sp810_timerclken** %6, align 8
  %17 = getelementptr inbounds %struct.clk_sp810_timerclken, %struct.clk_sp810_timerclken* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @SCCTRL_TIMERENnSEL_SHIFT(i32 %18)
  store i32 %19, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %60

28:                                               ; preds = %2
  %29 = load %struct.clk_sp810*, %struct.clk_sp810** %7, align 8
  %30 = getelementptr inbounds %struct.clk_sp810, %struct.clk_sp810* %29, i32 0, i32 0
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.clk_sp810*, %struct.clk_sp810** %7, align 8
  %34 = getelementptr inbounds %struct.clk_sp810, %struct.clk_sp810* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SCCTRL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 1, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.clk_sp810*, %struct.clk_sp810** %7, align 8
  %51 = getelementptr inbounds %struct.clk_sp810, %struct.clk_sp810* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SCCTRL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = load %struct.clk_sp810*, %struct.clk_sp810** %7, align 8
  %57 = getelementptr inbounds %struct.clk_sp810, %struct.clk_sp810* %56, i32 0, i32 0
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %28, %25
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.clk_sp810_timerclken* @to_clk_sp810_timerclken(%struct.clk_hw*) #1

declare dso_local i32 @SCCTRL_TIMERENnSEL_SHIFT(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
