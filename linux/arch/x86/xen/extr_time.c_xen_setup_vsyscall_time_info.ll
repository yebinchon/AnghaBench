; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_time.c_xen_setup_vsyscall_time_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_time.c_xen_setup_vsyscall_time_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvclock_vsyscall_time_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vcpu_register_time_memory_area = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VCPUOP_register_vcpu_time_memory_area = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"xen: VCLOCK_PVCLOCK not supported (err %d)\0A\00", align 1
@PVCLOCK_TSC_STABLE_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"xen: VCLOCK_PVCLOCK not supported (tsc unstable)\0A\00", align 1
@xen_clock = common dso_local global %struct.pvclock_vsyscall_time_info* null, align 8
@VCLOCK_PVCLOCK = common dso_local global i32 0, align 4
@xen_clocksource = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xen_setup_vsyscall_time_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_setup_vsyscall_time_info() #0 {
  %1 = alloca %struct.vcpu_register_time_memory_area, align 8
  %2 = alloca %struct.pvclock_vsyscall_time_info*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i64 @get_zeroed_page(i32 %4)
  %6 = inttoptr i64 %5 to %struct.pvclock_vsyscall_time_info*
  store %struct.pvclock_vsyscall_time_info* %6, %struct.pvclock_vsyscall_time_info** %2, align 8
  %7 = load %struct.pvclock_vsyscall_time_info*, %struct.pvclock_vsyscall_time_info** %2, align 8
  %8 = icmp ne %struct.pvclock_vsyscall_time_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %51

10:                                               ; preds = %0
  %11 = load %struct.pvclock_vsyscall_time_info*, %struct.pvclock_vsyscall_time_info** %2, align 8
  %12 = getelementptr inbounds %struct.pvclock_vsyscall_time_info, %struct.pvclock_vsyscall_time_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.vcpu_register_time_memory_area, %struct.vcpu_register_time_memory_area* %1, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %14, align 8
  %15 = load i32, i32* @VCPUOP_register_vcpu_time_memory_area, align 4
  %16 = call i32 @HYPERVISOR_vcpu_op(i32 %15, i32 0, %struct.vcpu_register_time_memory_area* %1)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.pvclock_vsyscall_time_info*, %struct.pvclock_vsyscall_time_info** %2, align 8
  %23 = ptrtoint %struct.pvclock_vsyscall_time_info* %22 to i64
  %24 = call i32 @free_page(i64 %23)
  br label %51

25:                                               ; preds = %10
  %26 = load %struct.pvclock_vsyscall_time_info*, %struct.pvclock_vsyscall_time_info** %2, align 8
  %27 = getelementptr inbounds %struct.pvclock_vsyscall_time_info, %struct.pvclock_vsyscall_time_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PVCLOCK_TSC_STABLE_BIT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.vcpu_register_time_memory_area, %struct.vcpu_register_time_memory_area* %1, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %35, align 8
  %36 = load i32, i32* @VCPUOP_register_vcpu_time_memory_area, align 4
  %37 = call i32 @HYPERVISOR_vcpu_op(i32 %36, i32 0, %struct.vcpu_register_time_memory_area* %1)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load %struct.pvclock_vsyscall_time_info*, %struct.pvclock_vsyscall_time_info** %2, align 8
  %42 = ptrtoint %struct.pvclock_vsyscall_time_info* %41 to i64
  %43 = call i32 @free_page(i64 %42)
  br label %44

44:                                               ; preds = %40, %33
  %45 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %51

46:                                               ; preds = %25
  %47 = load %struct.pvclock_vsyscall_time_info*, %struct.pvclock_vsyscall_time_info** %2, align 8
  store %struct.pvclock_vsyscall_time_info* %47, %struct.pvclock_vsyscall_time_info** @xen_clock, align 8
  %48 = load %struct.pvclock_vsyscall_time_info*, %struct.pvclock_vsyscall_time_info** @xen_clock, align 8
  %49 = call i32 @pvclock_set_pvti_cpu0_va(%struct.pvclock_vsyscall_time_info* %48)
  %50 = load i32, i32* @VCLOCK_PVCLOCK, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xen_clocksource, i32 0, i32 0, i32 0), align 4
  br label %51

51:                                               ; preds = %46, %44, %19, %9
  ret void
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @HYPERVISOR_vcpu_op(i32, i32, %struct.vcpu_register_time_memory_area*) #1

declare dso_local i32 @pr_notice(i8*, ...) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @pvclock_set_pvti_cpu0_va(%struct.pvclock_vsyscall_time_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
