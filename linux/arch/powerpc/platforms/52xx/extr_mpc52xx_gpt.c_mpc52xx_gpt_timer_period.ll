; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_gpt.c_mpc52xx_gpt_timer_period.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_gpt.c_mpc52xx_gpt_timer_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc52xx_gpt_priv = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpc52xx_gpt_timer_period(%struct.mpc52xx_gpt_priv* %0) #0 {
  %2 = alloca %struct.mpc52xx_gpt_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mpc52xx_gpt_priv* %0, %struct.mpc52xx_gpt_priv** %2, align 8
  %6 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %2, align 8
  %7 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @raw_spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %2, align 8
  %11 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @in_be32(i32* %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %2, align 8
  %16 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @raw_spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 16
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 65535
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 65536, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 1000000000
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %2, align 8
  %35 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @do_div(i32 %33, i32 %37)
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
