; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_mbm_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_mbm_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_domain = type { i32 }
%struct.rmid_read = type { i32, i32, %struct.rdt_domain* }

@QOS_L3_MBM_TOTAL_EVENT_ID = common dso_local global i32 0, align 4
@QOS_L3_MBM_LOCAL_EVENT_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdt_domain*, i32)* @mbm_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbm_update(%struct.rdt_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.rdt_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rmid_read, align 8
  store %struct.rdt_domain* %0, %struct.rdt_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load %struct.rdt_domain*, %struct.rdt_domain** %3, align 8
  %8 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %5, i32 0, i32 2
  store %struct.rdt_domain* %7, %struct.rdt_domain** %8, align 8
  %9 = call i64 (...) @is_mbm_total_enabled()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @QOS_L3_MBM_TOTAL_EVENT_ID, align 4
  %13 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @__mon_event_count(i32 %14, %struct.rmid_read* %5)
  br label %16

16:                                               ; preds = %11, %2
  %17 = call i64 (...) @is_mbm_local_enabled()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i32, i32* @QOS_L3_MBM_LOCAL_EVENT_ID, align 4
  %21 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = call i32 @is_mba_sc(i32* null)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @__mon_event_count(i32 %25, %struct.rmid_read* %5)
  br label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @mbm_bw_count(i32 %28, %struct.rmid_read* %5)
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %16
  ret void
}

declare dso_local i64 @is_mbm_total_enabled(...) #1

declare dso_local i32 @__mon_event_count(i32, %struct.rmid_read*) #1

declare dso_local i64 @is_mbm_local_enabled(...) #1

declare dso_local i32 @is_mba_sc(i32*) #1

declare dso_local i32 @mbm_bw_count(i32, %struct.rmid_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
