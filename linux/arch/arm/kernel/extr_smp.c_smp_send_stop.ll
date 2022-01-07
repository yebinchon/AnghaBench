; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_smp.c_smp_send_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_smp.c_smp_send_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@IPI_CPU_STOP = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"SMP: failed to stop secondary CPUs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_send_stop() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.cpumask, align 4
  %3 = load i32, i32* @cpu_online_mask, align 4
  %4 = call i32 @cpumask_copy(%struct.cpumask* %2, i32 %3)
  %5 = call i32 (...) @smp_processor_id()
  %6 = call i32 @cpumask_clear_cpu(i32 %5, %struct.cpumask* %2)
  %7 = call i32 @cpumask_empty(%struct.cpumask* %2)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @IPI_CPU_STOP, align 4
  %11 = call i32 @smp_cross_call(%struct.cpumask* %2, i32 %10)
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i64, i64* @USEC_PER_SEC, align 8
  store i64 %13, i64* %1, align 8
  br label %14

14:                                               ; preds = %23, %12
  %15 = call i32 (...) @num_online_cpus()
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i64, i64* %1, align 8
  %19 = add i64 %18, -1
  store i64 %19, i64* %1, align 8
  %20 = icmp ne i64 %18, 0
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = call i32 @udelay(i32 1)
  br label %14

25:                                               ; preds = %21
  %26 = call i32 (...) @num_online_cpus()
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @cpumask_copy(%struct.cpumask*, i32) #1

declare dso_local i32 @cpumask_clear_cpu(i32, %struct.cpumask*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpumask_empty(%struct.cpumask*) #1

declare dso_local i32 @smp_cross_call(%struct.cpumask*, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
