; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_machine_check_queue_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_machine_check_queue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine_check_event = type { i32 }

@MCE_EVENT_RELEASE = common dso_local global i32 0, align 4
@mce_queue_count = common dso_local global i32 0, align 4
@MAX_MC_EVT = common dso_local global i32 0, align 4
@mce_event_queue = common dso_local global i32* null, align 8
@mce_event_process_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_check_queue_event() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.machine_check_event, align 4
  %3 = load i32, i32* @MCE_EVENT_RELEASE, align 4
  %4 = call i32 @get_mce_event(%struct.machine_check_event* %2, i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %25

7:                                                ; preds = %0
  %8 = load i32, i32* @mce_queue_count, align 4
  %9 = call i32 @__this_cpu_inc_return(i32 %8)
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @MAX_MC_EVT, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i32, i32* @mce_queue_count, align 4
  %16 = call i32 @__this_cpu_dec(i32 %15)
  br label %25

17:                                               ; preds = %7
  %18 = load i32*, i32** @mce_event_queue, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @this_cpu_ptr(i32* %21)
  %23 = call i32 @memcpy(i32 %22, %struct.machine_check_event* %2, i32 4)
  %24 = call i32 @irq_work_queue(i32* @mce_event_process_work)
  br label %25

25:                                               ; preds = %17, %14, %6
  ret void
}

declare dso_local i32 @get_mce_event(%struct.machine_check_event*, i32) #1

declare dso_local i32 @__this_cpu_inc_return(i32) #1

declare dso_local i32 @__this_cpu_dec(i32) #1

declare dso_local i32 @memcpy(i32, %struct.machine_check_event*, i32) #1

declare dso_local i32 @this_cpu_ptr(i32*) #1

declare dso_local i32 @irq_work_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
