; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-init.c_per_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-init.c_per_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hub_data = type { i32 }

@PI_CPU_NUM = common dso_local global i32 0, align 4
@ST0_IM = common dso_local global i32 0, align 4
@IP27_HUB_PEND0_IRQ = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@IP27_HUB_PEND1_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @per_cpu_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hub_data*, align 8
  %5 = call i32 (...) @smp_processor_id()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @PI_CPU_NUM, align 4
  %7 = call i32 @LOCAL_HUB_L(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = call i32 (...) @get_compact_nodeid()
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.hub_data* @hub_data(i32 %9)
  store %struct.hub_data* %10, %struct.hub_data** %4, align 8
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.hub_data*, %struct.hub_data** %4, align 8
  %13 = getelementptr inbounds %struct.hub_data, %struct.hub_data* %12, i32 0, i32 0
  %14 = call i64 @test_and_set_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  br label %33

17:                                               ; preds = %0
  %18 = load i32, i32* @ST0_IM, align 4
  %19 = call i32 @clear_c0_status(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @per_hub_init(i32 %20)
  %22 = call i32 (...) @cpu_time_init()
  %23 = call i32 (...) @install_ipi()
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @cputoslice(i32 %24)
  %26 = call i32 @install_cpu_nmi_handler(i32 %25)
  %27 = load i32, i32* @IP27_HUB_PEND0_IRQ, align 4
  %28 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %29 = call i32 @enable_percpu_irq(i32 %27, i32 %28)
  %30 = load i32, i32* @IP27_HUB_PEND1_IRQ, align 4
  %31 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %32 = call i32 @enable_percpu_irq(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @LOCAL_HUB_L(i32) #1

declare dso_local i32 @get_compact_nodeid(...) #1

declare dso_local %struct.hub_data* @hub_data(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @clear_c0_status(i32) #1

declare dso_local i32 @per_hub_init(i32) #1

declare dso_local i32 @cpu_time_init(...) #1

declare dso_local i32 @install_ipi(...) #1

declare dso_local i32 @install_cpu_nmi_handler(i32) #1

declare dso_local i32 @cputoslice(i32) #1

declare dso_local i32 @enable_percpu_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
