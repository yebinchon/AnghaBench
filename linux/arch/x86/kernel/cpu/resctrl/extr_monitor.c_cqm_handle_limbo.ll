; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_cqm_handle_limbo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_cqm_handle_limbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i32 }
%struct.work_struct = type { i32 }
%struct.rdt_domain = type { i32 }

@CQM_LIMBOCHECK_INTERVAL = common dso_local global i32 0, align 4
@rdtgroup_mutex = common dso_local global i32 0, align 4
@rdt_resources_all = common dso_local global %struct.rdt_resource* null, align 8
@RDT_RESOURCE_L3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failure to get domain for limbo worker\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cqm_handle_limbo(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdt_resource*, align 8
  %6 = alloca %struct.rdt_domain*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %7 = load i32, i32* @CQM_LIMBOCHECK_INTERVAL, align 4
  %8 = call i64 @msecs_to_jiffies(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = call i32 (...) @smp_processor_id()
  store i32 %9, i32* %4, align 4
  %10 = call i32 @mutex_lock(i32* @rdtgroup_mutex)
  %11 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %12 = load i64, i64* @RDT_RESOURCE_L3, align 8
  %13 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %11, i64 %12
  store %struct.rdt_resource* %13, %struct.rdt_resource** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.rdt_resource*, %struct.rdt_resource** %5, align 8
  %16 = call %struct.rdt_domain* @get_domain_from_cpu(i32 %14, %struct.rdt_resource* %15)
  store %struct.rdt_domain* %16, %struct.rdt_domain** %6, align 8
  %17 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %18 = icmp ne %struct.rdt_domain* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = call i32 @pr_warn_once(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %23 = call i32 @__check_limbo(%struct.rdt_domain* %22, i32 0)
  %24 = load %struct.rdt_resource*, %struct.rdt_resource** %5, align 8
  %25 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %26 = call i64 @has_busy_rmid(%struct.rdt_resource* %24, %struct.rdt_domain* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.rdt_domain*, %struct.rdt_domain** %6, align 8
  %31 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %30, i32 0, i32 0
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @schedule_delayed_work_on(i32 %29, i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %28, %21
  br label %35

35:                                               ; preds = %34, %19
  %36 = call i32 @mutex_unlock(i32* @rdtgroup_mutex)
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.rdt_domain* @get_domain_from_cpu(i32, %struct.rdt_resource*) #1

declare dso_local i32 @pr_warn_once(i8*) #1

declare dso_local i32 @__check_limbo(%struct.rdt_domain*, i32) #1

declare dso_local i64 @has_busy_rmid(%struct.rdt_resource*, %struct.rdt_domain*) #1

declare dso_local i32 @schedule_delayed_work_on(i32, i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
