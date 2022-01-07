; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/paravirt/extr_paravirt-irq.c_irq_core_bus_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/paravirt/extr_paravirt-irq.c_irq_core_bus_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.core_chip_data = type { i64, i64, i32 }

@irq_core_set_enable_local = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @irq_core_bus_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_core_bus_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.core_chip_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call %struct.core_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data* %4)
  store %struct.core_chip_data* %5, %struct.core_chip_data** %3, align 8
  %6 = load %struct.core_chip_data*, %struct.core_chip_data** %3, align 8
  %7 = getelementptr inbounds %struct.core_chip_data, %struct.core_chip_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.core_chip_data*, %struct.core_chip_data** %3, align 8
  %10 = getelementptr inbounds %struct.core_chip_data, %struct.core_chip_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @irq_core_set_enable_local, align 4
  %15 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %16 = call i32 @on_each_cpu(i32 %14, %struct.irq_data* %15, i32 1)
  %17 = load %struct.core_chip_data*, %struct.core_chip_data** %3, align 8
  %18 = getelementptr inbounds %struct.core_chip_data, %struct.core_chip_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.core_chip_data*, %struct.core_chip_data** %3, align 8
  %21 = getelementptr inbounds %struct.core_chip_data, %struct.core_chip_data* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.core_chip_data*, %struct.core_chip_data** %3, align 8
  %24 = getelementptr inbounds %struct.core_chip_data, %struct.core_chip_data* %23, i32 0, i32 2
  %25 = call i32 @mutex_unlock(i32* %24)
  ret void
}

declare dso_local %struct.core_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @on_each_cpu(i32, %struct.irq_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
