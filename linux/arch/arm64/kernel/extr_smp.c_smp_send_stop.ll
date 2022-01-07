; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_smp.c_smp_send_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_smp.c_smp_send_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_online_mask = common dso_local global i32 0, align 4
@system_state = common dso_local global i64 0, align 8
@SYSTEM_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"SMP: stopping secondary CPUs\0A\00", align 1
@IPI_CPU_STOP = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"SMP: failed to stop secondary CPUs %*pbl\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_send_stop() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @num_online_cpus()
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %18

5:                                                ; preds = %0
  %6 = load i32, i32* @cpu_online_mask, align 4
  %7 = call i32 @cpumask_copy(i32* %2, i32 %6)
  %8 = call i32 (...) @smp_processor_id()
  %9 = call i32 @cpumask_clear_cpu(i32 %8, i32* %2)
  %10 = load i64, i64* @system_state, align 8
  %11 = load i64, i64* @SYSTEM_RUNNING, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = call i32 @pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %5
  %16 = load i32, i32* @IPI_CPU_STOP, align 4
  %17 = call i32 @smp_cross_call(i32* %2, i32 %16)
  br label %18

18:                                               ; preds = %15, %0
  %19 = load i64, i64* @USEC_PER_SEC, align 8
  store i64 %19, i64* %1, align 8
  br label %20

20:                                               ; preds = %29, %18
  %21 = call i32 (...) @num_online_cpus()
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i64, i64* %1, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %1, align 8
  %26 = icmp ne i64 %24, 0
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i1 [ false, %20 ], [ %26, %23 ]
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = call i32 @udelay(i32 1)
  br label %20

31:                                               ; preds = %27
  %32 = call i32 (...) @num_online_cpus()
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @cpu_online_mask, align 4
  %36 = call i32 @cpumask_pr_args(i32 %35)
  %37 = call i32 @pr_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = call i32 (...) @sdei_mask_local_cpu()
  ret void
}

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @cpumask_copy(i32*, i32) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @smp_cross_call(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @cpumask_pr_args(i32) #1

declare dso_local i32 @sdei_mask_local_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
