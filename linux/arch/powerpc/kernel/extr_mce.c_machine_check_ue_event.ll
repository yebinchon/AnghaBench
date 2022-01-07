; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_machine_check_ue_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_machine_check_ue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine_check_event = type { i32 }

@mce_ue_count = common dso_local global i32 0, align 4
@MAX_MC_EVT = common dso_local global i32 0, align 4
@mce_ue_event_queue = common dso_local global i32* null, align 8
@mce_ue_event_irq_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.machine_check_event*)* @machine_check_ue_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @machine_check_ue_event(%struct.machine_check_event* %0) #0 {
  %2 = alloca %struct.machine_check_event*, align 8
  %3 = alloca i32, align 4
  store %struct.machine_check_event* %0, %struct.machine_check_event** %2, align 8
  %4 = load i32, i32* @mce_ue_count, align 4
  %5 = call i32 @__this_cpu_inc_return(i32 %4)
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MAX_MC_EVT, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @mce_ue_count, align 4
  %12 = call i32 @__this_cpu_dec(i32 %11)
  br label %22

13:                                               ; preds = %1
  %14 = load i32*, i32** @mce_ue_event_queue, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @this_cpu_ptr(i32* %17)
  %19 = load %struct.machine_check_event*, %struct.machine_check_event** %2, align 8
  %20 = call i32 @memcpy(i32 %18, %struct.machine_check_event* %19, i32 4)
  %21 = call i32 @irq_work_queue(i32* @mce_ue_event_irq_work)
  br label %22

22:                                               ; preds = %13, %10
  ret void
}

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
