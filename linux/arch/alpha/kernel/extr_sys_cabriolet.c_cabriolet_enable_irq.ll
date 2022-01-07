; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_sys_cabriolet.c_cabriolet_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_sys_cabriolet.c_cabriolet_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }

@cached_irq_mask = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @cabriolet_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cabriolet_enable_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %3 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %4 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = shl i64 1, %8
  %10 = xor i64 %9, -1
  %11 = load i64, i64* @cached_irq_mask, align 8
  %12 = and i64 %11, %10
  store i64 %12, i64* @cached_irq_mask, align 8
  %13 = call i32 @cabriolet_update_irq_hw(i64 %5, i64 %12)
  ret void
}

declare dso_local i32 @cabriolet_update_irq_hw(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
