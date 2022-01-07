; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_gpt.c_mpc52xx_gpt_irq_cascade.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_gpt.c_mpc52xx_gpt_irq_cascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.mpc52xx_gpt_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MPC52xx_GPT_STATUS_IRQMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @mpc52xx_gpt_irq_cascade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc52xx_gpt_irq_cascade(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.mpc52xx_gpt_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = call %struct.mpc52xx_gpt_priv* @irq_desc_get_handler_data(%struct.irq_desc* %6)
  store %struct.mpc52xx_gpt_priv* %7, %struct.mpc52xx_gpt_priv** %3, align 8
  %8 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @in_be32(i32* %11)
  %13 = load i32, i32* @MPC52xx_GPT_STATUS_IRQMASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @irq_linear_revmap(i32 %20, i32 0)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @generic_handle_irq(i32 %22)
  br label %24

24:                                               ; preds = %17, %1
  ret void
}

declare dso_local %struct.mpc52xx_gpt_priv* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
