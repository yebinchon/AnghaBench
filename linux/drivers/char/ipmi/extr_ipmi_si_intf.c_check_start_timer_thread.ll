; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_check_start_timer_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_check_start_timer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i64, i64, i32* }

@SI_NORMAL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@SI_TIMEOUT_JIFFIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smi_info*)* @check_start_timer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_start_timer_thread(%struct.smi_info* %0) #0 {
  %2 = alloca %struct.smi_info*, align 8
  store %struct.smi_info* %0, %struct.smi_info** %2, align 8
  %3 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %4 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SI_NORMAL, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %10 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* @SI_TIMEOUT_JIFFIES, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @smi_mod_timer(%struct.smi_info* %14, i64 %17)
  %19 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %20 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %25 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @wake_up_process(i64 %26)
  br label %28

28:                                               ; preds = %23, %13
  %29 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %30 = call i32 @start_next_msg(%struct.smi_info* %29)
  %31 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %32 = call i32 @smi_event_handler(%struct.smi_info* %31, i32 0)
  br label %33

33:                                               ; preds = %28, %8, %1
  ret void
}

declare dso_local i32 @smi_mod_timer(%struct.smi_info*, i64) #1

declare dso_local i32 @wake_up_process(i64) #1

declare dso_local i32 @start_next_msg(%struct.smi_info*) #1

declare dso_local i32 @smi_event_handler(%struct.smi_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
