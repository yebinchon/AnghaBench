; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sibyte/bcm1480/extr_smp.c_bcm1480_mailbox_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sibyte/bcm1480/extr_smp.c_bcm1480_mailbox_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@K_BCM1480_INT_MBOX_0_0 = common dso_local global i32 0, align 4
@mailbox_0_regs = common dso_local global i32* null, align 8
@mailbox_0_clear_regs = common dso_local global i32* null, align 8
@SMP_RESCHEDULE_YOURSELF = common dso_local global i32 0, align 4
@SMP_CALL_FUNCTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcm1480_mailbox_interrupt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @smp_processor_id()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @K_BCM1480_INT_MBOX_0_0, align 4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @kstat_incr_irq_this_cpu(i32 %6)
  %8 = load i32*, i32** @mailbox_0_regs, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @__raw_readq(i32 %12)
  %14 = ashr i32 %13, 48
  %15 = and i32 %14, 65535
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 %16, 48
  %18 = load i32*, i32** @mailbox_0_clear_regs, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__raw_writeq(i32 %17, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SMP_RESCHEDULE_YOURSELF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %0
  %29 = call i32 (...) @scheduler_ipi()
  br label %30

30:                                               ; preds = %28, %0
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SMP_CALL_FUNCTION, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = call i32 (...) @irq_enter()
  %37 = call i32 (...) @generic_smp_call_function_interrupt()
  %38 = call i32 (...) @irq_exit()
  br label %39

39:                                               ; preds = %35, %30
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @kstat_incr_irq_this_cpu(i32) #1

declare dso_local i32 @__raw_readq(i32) #1

declare dso_local i32 @__raw_writeq(i32, i32) #1

declare dso_local i32 @scheduler_ipi(...) #1

declare dso_local i32 @irq_enter(...) #1

declare dso_local i32 @generic_smp_call_function_interrupt(...) #1

declare dso_local i32 @irq_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
