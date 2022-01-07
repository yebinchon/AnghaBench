; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-irq.c_ip27_do_irq_mask0.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-irq.c_ip27_do_irq_mask0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_domain = type { i32 }

@irq_enable_mask = common dso_local global i32 0, align 4
@PI_INT_PEND0 = common dso_local global i32 0, align 4
@CPU_CALL_A_IRQ = common dso_local global i64 0, align 8
@CPU_CALL_B_IRQ = common dso_local global i64 0, align 8
@CPU_RESCHED_A_IRQ = common dso_local global i64 0, align 8
@CPU_RESCHED_B_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @ip27_do_irq_mask0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip27_do_irq_mask0(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %8 = call i32 (...) @smp_processor_id()
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @irq_enable_mask, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64* @per_cpu(i32 %9, i32 %10)
  store i64* %11, i64** %4, align 8
  %12 = load i32, i32* @PI_INT_PEND0, align 4
  %13 = call i64 @LOCAL_HUB_L(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64*, i64** %4, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %39

22:                                               ; preds = %1
  %23 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %24 = call %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc* %23)
  store %struct.irq_domain* %24, %struct.irq_domain** %5, align 8
  %25 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @__ffs(i64 %26)
  %28 = call i32 @irq_linear_revmap(%struct.irq_domain* %25, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @generic_handle_irq(i32 %32)
  br label %36

34:                                               ; preds = %22
  %35 = call i32 (...) @spurious_interrupt()
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* @PI_INT_PEND0, align 4
  %38 = call i64 @LOCAL_HUB_L(i32 %37)
  br label %39

39:                                               ; preds = %36, %21
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64* @per_cpu(i32, i32) #1

declare dso_local i64 @LOCAL_HUB_L(i32) #1

declare dso_local %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @irq_linear_revmap(%struct.irq_domain*, i32) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @spurious_interrupt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
