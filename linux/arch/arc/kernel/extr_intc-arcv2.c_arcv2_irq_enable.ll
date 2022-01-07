; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_intc-arcv2.c_arcv2_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_intc-arcv2.c_arcv2_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@AUX_IRQ_SELECT = common dso_local global i32 0, align 4
@AUX_IRQ_PRIORITY = common dso_local global i32 0, align 4
@ARCV2_IRQ_DEF_PRIO = common dso_local global i32 0, align 4
@AUX_IRQ_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arcv2_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %3 = load i32, i32* @AUX_IRQ_SELECT, align 4
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @write_aux_reg(i32 %3, i32 %6)
  %8 = load i32, i32* @AUX_IRQ_PRIORITY, align 4
  %9 = load i32, i32* @ARCV2_IRQ_DEF_PRIO, align 4
  %10 = call i32 @write_aux_reg(i32 %8, i32 %9)
  %11 = load i32, i32* @AUX_IRQ_ENABLE, align 4
  %12 = call i32 @write_aux_reg(i32 %11, i32 1)
  ret void
}

declare dso_local i32 @write_aux_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
