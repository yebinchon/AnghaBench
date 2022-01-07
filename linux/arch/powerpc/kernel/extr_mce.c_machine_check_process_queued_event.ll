; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_machine_check_process_queued_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_machine_check_process_queued_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_work = type { i32 }
%struct.machine_check_event = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@TAINT_MACHINE_CHECK = common dso_local global i32 0, align 4
@LOCKDEP_NOW_UNRELIABLE = common dso_local global i32 0, align 4
@mce_queue_count = common dso_local global i32 0, align 4
@mce_event_queue = common dso_local global i32* null, align 8
@MCE_ERROR_TYPE_UE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_work*)* @machine_check_process_queued_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @machine_check_process_queued_event(%struct.irq_work* %0) #0 {
  %2 = alloca %struct.irq_work*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.machine_check_event*, align 8
  store %struct.irq_work* %0, %struct.irq_work** %2, align 8
  %5 = load i32, i32* @TAINT_MACHINE_CHECK, align 4
  %6 = load i32, i32* @LOCKDEP_NOW_UNRELIABLE, align 4
  %7 = call i32 @add_taint(i32 %5, i32 %6)
  br label %8

8:                                                ; preds = %36, %33, %1
  %9 = load i32, i32* @mce_queue_count, align 4
  %10 = call i32 @__this_cpu_read(i32 %9)
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load i32, i32* @mce_queue_count, align 4
  %14 = call i32 @__this_cpu_read(i32 %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  %16 = load i32*, i32** @mce_event_queue, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call %struct.machine_check_event* @this_cpu_ptr(i32* %19)
  store %struct.machine_check_event* %20, %struct.machine_check_event** %4, align 8
  %21 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %22 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MCE_ERROR_TYPE_UE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %12
  %27 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %28 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @mce_queue_count, align 4
  %35 = call i32 @__this_cpu_dec(i32 %34)
  br label %8

36:                                               ; preds = %26, %12
  %37 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %38 = call i32 @machine_check_print_event_info(%struct.machine_check_event* %37, i32 0, i32 0)
  %39 = load i32, i32* @mce_queue_count, align 4
  %40 = call i32 @__this_cpu_dec(i32 %39)
  br label %8

41:                                               ; preds = %8
  ret void
}

declare dso_local i32 @add_taint(i32, i32) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local %struct.machine_check_event* @this_cpu_ptr(i32*) #1

declare dso_local i32 @__this_cpu_dec(i32) #1

declare dso_local i32 @machine_check_print_event_info(%struct.machine_check_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
