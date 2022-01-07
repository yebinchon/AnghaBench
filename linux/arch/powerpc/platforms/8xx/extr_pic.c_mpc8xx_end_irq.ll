; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/8xx/extr_pic.c_mpc8xx_end_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/8xx/extr_pic.c_mpc8xx_end_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.irq_data = type { i32 }

@mpc8xx_cached_irq_mask = common dso_local global i32 0, align 4
@siu_reg = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @mpc8xx_end_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc8xx_end_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %3 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %4 = call i32 @mpc8xx_irqd_to_bit(%struct.irq_data* %3)
  %5 = load i32, i32* @mpc8xx_cached_irq_mask, align 4
  %6 = or i32 %5, %4
  store i32 %6, i32* @mpc8xx_cached_irq_mask, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @siu_reg, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* @mpc8xx_cached_irq_mask, align 4
  %10 = call i32 @out_be32(i32* %8, i32 %9)
  ret void
}

declare dso_local i32 @mpc8xx_irqd_to_bit(%struct.irq_data*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
