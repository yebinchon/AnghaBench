; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_gpt.c_mpc52xx_gpt_stop_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_gpt.c_mpc52xx_gpt_stop_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc52xx_gpt_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MPC52xx_GPT_IS_WDT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MPC52xx_GPT_MODE_COUNTER_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpc52xx_gpt_stop_timer(%struct.mpc52xx_gpt_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpc52xx_gpt_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.mpc52xx_gpt_priv* %0, %struct.mpc52xx_gpt_priv** %3, align 8
  %5 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %3, align 8
  %6 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %5, i32 0, i32 1
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @raw_spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MPC52xx_GPT_IS_WDT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %16, i32 0, i32 1
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @raw_spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %33

22:                                               ; preds = %1
  %23 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %3, align 8
  %24 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* @MPC52xx_GPT_MODE_COUNTER_ENABLE, align 4
  %28 = call i32 @clrbits32(i32* %26, i32 %27)
  %29 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %29, i32 0, i32 1
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @raw_spin_unlock_irqrestore(i32* %30, i64 %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %22, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clrbits32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
