; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_machine_kexec.c_crash_smp_send_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_machine_kexec.c_crash_smp_send_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crash_smp_send_stop.cpus_stopped = internal global i32 0, align 4
@waiting_for_crash_ipi = common dso_local global i32 0, align 4
@machine_crash_nonpanic_core = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Non-crashing CPUs did not react to IPI\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crash_smp_send_stop() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @crash_smp_send_stop.cpus_stopped, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %29

5:                                                ; preds = %0
  %6 = call i64 (...) @num_online_cpus()
  %7 = sub nsw i64 %6, 1
  %8 = call i32 @atomic_set(i32* @waiting_for_crash_ipi, i64 %7)
  %9 = load i32, i32* @machine_crash_nonpanic_core, align 4
  %10 = call i32 @smp_call_function(i32 %9, i32* null, i32 0)
  store i64 1000, i64* %1, align 8
  br label %11

11:                                               ; preds = %19, %5
  %12 = call i64 @atomic_read(i32* @waiting_for_crash_ipi)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i64, i64* %1, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ false, %11 ], [ %16, %14 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = call i32 @mdelay(i32 1)
  %21 = load i64, i64* %1, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %1, align 8
  br label %11

23:                                               ; preds = %17
  %24 = call i64 @atomic_read(i32* @waiting_for_crash_ipi)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  store i32 1, i32* @crash_smp_send_stop.cpus_stopped, align 4
  br label %29

29:                                               ; preds = %28, %4
  ret void
}

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i32 @smp_call_function(i32, i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
