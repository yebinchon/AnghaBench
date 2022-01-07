; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/paravirt/extr_paravirt-smp.c_paravirt_prepare_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/paravirt/extr_paravirt-smp.c_paravirt_prepare_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIPS_IRQ_MBOX0 = common dso_local global i32 0, align 4
@paravirt_reched_interrupt = common dso_local global i32 0, align 4
@IRQF_PERCPU = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Scheduler\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Cannot request_irq for SchedulerIPI\00", align 1
@MIPS_IRQ_MBOX1 = common dso_local global i32 0, align 4
@paravirt_function_interrupt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"SMP-Call\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Cannot request_irq for SMP-Call\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @paravirt_prepare_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @paravirt_prepare_cpus(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @MIPS_IRQ_MBOX0, align 4
  %4 = load i32, i32* @paravirt_reched_interrupt, align 4
  %5 = load i32, i32* @IRQF_PERCPU, align 4
  %6 = load i32, i32* @IRQF_NO_THREAD, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @paravirt_reched_interrupt, align 4
  %9 = call i64 @request_irq(i32 %3, i32 %4, i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i32, i32* @MIPS_IRQ_MBOX1, align 4
  %15 = load i32, i32* @paravirt_function_interrupt, align 4
  %16 = load i32, i32* @IRQF_PERCPU, align 4
  %17 = load i32, i32* @IRQF_NO_THREAD, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @paravirt_function_interrupt, align 4
  %20 = call i64 @request_irq(i32 %14, i32 %15, i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %13
  ret void
}

declare dso_local i64 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
