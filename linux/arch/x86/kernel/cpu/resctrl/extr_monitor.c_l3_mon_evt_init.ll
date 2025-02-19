; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_l3_mon_evt_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_l3_mon_evt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rdt_resource = type { i32 }

@llc_occupancy_event = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@mbm_total_event = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@mbm_local_event = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdt_resource*)* @l3_mon_evt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3_mon_evt_init(%struct.rdt_resource* %0) #0 {
  %2 = alloca %struct.rdt_resource*, align 8
  store %struct.rdt_resource* %0, %struct.rdt_resource** %2, align 8
  %3 = load %struct.rdt_resource*, %struct.rdt_resource** %2, align 8
  %4 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %3, i32 0, i32 0
  %5 = call i32 @INIT_LIST_HEAD(i32* %4)
  %6 = call i64 (...) @is_llc_occupancy_enabled()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.rdt_resource*, %struct.rdt_resource** %2, align 8
  %10 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %9, i32 0, i32 0
  %11 = call i32 @list_add_tail(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @llc_occupancy_event, i32 0, i32 0), i32* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = call i64 (...) @is_mbm_total_enabled()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.rdt_resource*, %struct.rdt_resource** %2, align 8
  %17 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %16, i32 0, i32 0
  %18 = call i32 @list_add_tail(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mbm_total_event, i32 0, i32 0), i32* %17)
  br label %19

19:                                               ; preds = %15, %12
  %20 = call i64 (...) @is_mbm_local_enabled()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.rdt_resource*, %struct.rdt_resource** %2, align 8
  %24 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %23, i32 0, i32 0
  %25 = call i32 @list_add_tail(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mbm_local_event, i32 0, i32 0), i32* %24)
  br label %26

26:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @is_llc_occupancy_enabled(...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @is_mbm_total_enabled(...) #1

declare dso_local i64 @is_mbm_local_enabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
