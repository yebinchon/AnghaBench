; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_time.c_xen_restore_time_memory_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_time.c_xen_restore_time_memory_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vcpu_register_time_memory_area = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@xen_clock = common dso_local global %struct.TYPE_4__* null, align 8
@VCPUOP_register_vcpu_time_memory_area = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Cannot restore secondary vcpu_time_info (err %d)\00", align 1
@xen_clock_value_saved = common dso_local global i64 0, align 8
@xen_sched_clock_offset = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_restore_time_memory_area() #0 {
  %1 = alloca %struct.vcpu_register_time_memory_area, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xen_clock, align 8
  %4 = icmp ne %struct.TYPE_4__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %19

6:                                                ; preds = %0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xen_clock, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.vcpu_register_time_memory_area, %struct.vcpu_register_time_memory_area* %1, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32* %8, i32** %10, align 8
  %11 = load i32, i32* @VCPUOP_register_vcpu_time_memory_area, align 4
  %12 = call i32 @HYPERVISOR_vcpu_op(i32 %11, i32 0, %struct.vcpu_register_time_memory_area* %1)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @pr_notice(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %6
  br label %19

19:                                               ; preds = %18, %5
  %20 = call i32 (...) @pvclock_resume()
  %21 = call i64 (...) @xen_clocksource_read()
  %22 = load i64, i64* @xen_clock_value_saved, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* @xen_sched_clock_offset, align 8
  ret void
}

declare dso_local i32 @HYPERVISOR_vcpu_op(i32, i32, %struct.vcpu_register_time_memory_area*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @pvclock_resume(...) #1

declare dso_local i64 @xen_clocksource_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
