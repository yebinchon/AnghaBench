; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_smp.c_smp_send_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_smp.c_smp_send_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@IPI_CPU_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_send_stop() #0 {
  %1 = alloca %struct.cpumask, align 4
  %2 = load i32, i32* @cpu_online_mask, align 4
  %3 = call i32 @cpumask_copy(%struct.cpumask* %1, i32 %2)
  %4 = call i32 (...) @smp_processor_id()
  %5 = call i32 @cpumask_clear_cpu(i32 %4, %struct.cpumask* %1)
  %6 = load i32, i32* @IPI_CPU_STOP, align 4
  %7 = call i32 @ipi_send_msg(%struct.cpumask* %1, i32 %6)
  ret void
}

declare dso_local i32 @cpumask_copy(%struct.cpumask*, i32) #1

declare dso_local i32 @cpumask_clear_cpu(i32, %struct.cpumask*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @ipi_send_msg(%struct.cpumask*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
