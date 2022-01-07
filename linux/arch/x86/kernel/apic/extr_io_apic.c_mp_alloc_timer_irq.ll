; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_mp_alloc_timer_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_mp_alloc_timer_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_alloc_info = type { i32, i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@ioapic_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mp_alloc_timer_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_alloc_timer_irq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_alloc_info, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.irq_domain* @mp_ioapic_irqdomain(i32 %8)
  store %struct.irq_domain* %9, %struct.irq_domain** %6, align 8
  %10 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %11 = icmp ne %struct.irq_domain* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i32, i32* @NUMA_NO_NODE, align 4
  %14 = call i32 @ioapic_set_alloc_attr(%struct.irq_alloc_info* %7, i32 %13, i32 0, i32 0)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @mpc_ioapic_id(i32 %15)
  %17 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %7, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %7, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = call i32 @mutex_lock(i32* @ioapic_mutex)
  %21 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @alloc_isa_irq_from_domain(%struct.irq_domain* %21, i32 0, i32 %22, i32 %23, %struct.irq_alloc_info* %7)
  store i32 %24, i32* %5, align 4
  %25 = call i32 @mutex_unlock(i32* @ioapic_mutex)
  br label %26

26:                                               ; preds = %12, %2
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local %struct.irq_domain* @mp_ioapic_irqdomain(i32) #1

declare dso_local i32 @ioapic_set_alloc_attr(%struct.irq_alloc_info*, i32, i32, i32) #1

declare dso_local i32 @mpc_ioapic_id(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @alloc_isa_irq_from_domain(%struct.irq_domain*, i32, i32, i32, %struct.irq_alloc_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
