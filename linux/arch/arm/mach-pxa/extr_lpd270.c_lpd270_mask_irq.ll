; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_lpd270.c_lpd270_mask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_lpd270.c_lpd270_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@LPD270_INT_STATUS = common dso_local global i32 0, align 4
@lpd270_irq_enabled = common dso_local global i32 0, align 4
@LPD270_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @lpd270_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpd270_mask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @LPD270_IRQ(i32 0)
  %8 = sub nsw i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = shl i32 1, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @LPD270_INT_STATUS, align 4
  %13 = call i32 @__raw_writew(i32 %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = shl i32 1, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @lpd270_irq_enabled, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* @lpd270_irq_enabled, align 4
  %19 = load i32, i32* @lpd270_irq_enabled, align 4
  %20 = load i32, i32* @LPD270_INT_MASK, align 4
  %21 = call i32 @__raw_writew(i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @LPD270_IRQ(i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
