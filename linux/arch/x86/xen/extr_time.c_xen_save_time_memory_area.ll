; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_time.c_xen_save_time_memory_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_time.c_xen_save_time_memory_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_register_time_memory_area = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@xen_sched_clock_offset = common dso_local global i64 0, align 8
@xen_clock_value_saved = common dso_local global i64 0, align 8
@xen_clock = common dso_local global i32 0, align 4
@VCPUOP_register_vcpu_time_memory_area = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Cannot save secondary vcpu_time_info (err %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_save_time_memory_area() #0 {
  %1 = alloca %struct.vcpu_register_time_memory_area, align 8
  %2 = alloca i32, align 4
  %3 = call i64 (...) @xen_clocksource_read()
  %4 = load i64, i64* @xen_sched_clock_offset, align 8
  %5 = sub nsw i64 %3, %4
  store i64 %5, i64* @xen_clock_value_saved, align 8
  %6 = load i32, i32* @xen_clock, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %22

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.vcpu_register_time_memory_area, %struct.vcpu_register_time_memory_area* %1, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @VCPUOP_register_vcpu_time_memory_area, align 4
  %13 = call i32 @HYPERVISOR_vcpu_op(i32 %12, i32 0, %struct.vcpu_register_time_memory_area* %1)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @pr_notice(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %22

19:                                               ; preds = %9
  %20 = load i32, i32* @xen_clock, align 4
  %21 = call i32 @clear_page(i32 %20)
  br label %22

22:                                               ; preds = %8, %19, %16
  ret void
}

declare dso_local i64 @xen_clocksource_read(...) #1

declare dso_local i32 @HYPERVISOR_vcpu_op(i32, i32, %struct.vcpu_register_time_memory_area*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @clear_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
