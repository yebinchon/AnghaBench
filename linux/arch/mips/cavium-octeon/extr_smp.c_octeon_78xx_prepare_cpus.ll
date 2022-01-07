; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_smp.c_octeon_78xx_prepare_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_smp.c_octeon_78xx_prepare_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_IRQ_MBOX0 = common dso_local global i64 0, align 8
@octeon_78xx_reched_interrupt = common dso_local global i32 0, align 4
@IRQF_PERCPU = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Scheduler\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Cannot request_irq for SchedulerIPI\00", align 1
@octeon_78xx_call_function_interrupt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"SMP-Call\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Cannot request_irq for SMP-Call\00", align 1
@octeon_78xx_icache_flush_interrupt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"ICache-Flush\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Cannot request_irq for ICache-Flush\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @octeon_78xx_prepare_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_78xx_prepare_cpus(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @OCTEON_IRQ_MBOX0, align 8
  %4 = add nsw i64 %3, 0
  %5 = load i32, i32* @octeon_78xx_reched_interrupt, align 4
  %6 = load i32, i32* @IRQF_PERCPU, align 4
  %7 = load i32, i32* @IRQF_NO_THREAD, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @octeon_78xx_reched_interrupt, align 4
  %10 = call i64 @request_irq(i64 %4, i32 %5, i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i64, i64* @OCTEON_IRQ_MBOX0, align 8
  %16 = add nsw i64 %15, 1
  %17 = load i32, i32* @octeon_78xx_call_function_interrupt, align 4
  %18 = load i32, i32* @IRQF_PERCPU, align 4
  %19 = load i32, i32* @IRQF_NO_THREAD, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @octeon_78xx_call_function_interrupt, align 4
  %22 = call i64 @request_irq(i64 %16, i32 %17, i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %14
  %27 = load i64, i64* @OCTEON_IRQ_MBOX0, align 8
  %28 = add nsw i64 %27, 2
  %29 = load i32, i32* @octeon_78xx_icache_flush_interrupt, align 4
  %30 = load i32, i32* @IRQF_PERCPU, align 4
  %31 = load i32, i32* @IRQF_NO_THREAD, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @octeon_78xx_icache_flush_interrupt, align 4
  %34 = call i64 @request_irq(i64 %28, i32 %29, i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %26
  ret void
}

declare dso_local i64 @request_irq(i64, i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
