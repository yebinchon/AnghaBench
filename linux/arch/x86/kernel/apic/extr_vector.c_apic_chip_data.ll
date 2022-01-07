; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_apic_chip_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_apic_chip_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apic_chip_data = type { i32 }
%struct.irq_data = type { %struct.apic_chip_data*, %struct.irq_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.apic_chip_data* (%struct.irq_data*)* @apic_chip_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.apic_chip_data* @apic_chip_data(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.apic_chip_data*, align 8
  %3 = alloca %struct.irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %5 = icmp ne %struct.irq_data* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.apic_chip_data* null, %struct.apic_chip_data** %2, align 8
  br label %21

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %13, %7
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 1
  %11 = load %struct.irq_data*, %struct.irq_data** %10, align 8
  %12 = icmp ne %struct.irq_data* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 1
  %16 = load %struct.irq_data*, %struct.irq_data** %15, align 8
  store %struct.irq_data* %16, %struct.irq_data** %3, align 8
  br label %8

17:                                               ; preds = %8
  %18 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load %struct.apic_chip_data*, %struct.apic_chip_data** %19, align 8
  store %struct.apic_chip_data* %20, %struct.apic_chip_data** %2, align 8
  br label %21

21:                                               ; preds = %17, %6
  %22 = load %struct.apic_chip_data*, %struct.apic_chip_data** %2, align 8
  ret %struct.apic_chip_data* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
