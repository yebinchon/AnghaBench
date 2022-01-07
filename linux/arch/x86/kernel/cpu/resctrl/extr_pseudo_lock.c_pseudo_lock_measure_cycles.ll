; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_pseudo_lock_measure_cycles.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_pseudo_lock_measure_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdtgroup = type { i32, %struct.pseudo_lock_region* }
%struct.pseudo_lock_region = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.task_struct = type { i32 }

@rdtgroup_mutex = common dso_local global i32 0, align 4
@RDT_DELETED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@measure_cycles_lat_fn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pseudo_lock_measure/%u\00", align 1
@measure_l2_residency = common dso_local global i32 0, align 4
@measure_l3_residency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdtgroup*, i32)* @pseudo_lock_measure_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseudo_lock_measure_cycles(%struct.rdtgroup* %0, i32 %1) #0 {
  %3 = alloca %struct.rdtgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pseudo_lock_region*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rdtgroup* %0, %struct.rdtgroup** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %10 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %9, i32 0, i32 1
  %11 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %10, align 8
  store %struct.pseudo_lock_region* %11, %struct.pseudo_lock_region** %5, align 8
  store i32 -1, i32* %8, align 4
  %12 = call i32 (...) @cpus_read_lock()
  %13 = call i32 @mutex_lock(i32* @rdtgroup_mutex)
  %14 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %15 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @RDT_DELETED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %107

23:                                               ; preds = %2
  %24 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %5, align 8
  %25 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %107

31:                                               ; preds = %23
  %32 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %5, align 8
  %33 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %5, align 8
  %35 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @cpumask_first(i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @cpu_online(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %107

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %5, align 8
  %48 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* @measure_cycles_lat_fn, align 4
  %53 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @cpu_to_node(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.task_struct* @kthread_create_on_node(i32 %52, %struct.pseudo_lock_region* %53, i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %56)
  store %struct.task_struct* %57, %struct.task_struct** %6, align 8
  br label %81

58:                                               ; preds = %45
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* @measure_l2_residency, align 4
  %63 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @cpu_to_node(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = call %struct.task_struct* @kthread_create_on_node(i32 %62, %struct.pseudo_lock_region* %63, i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %66)
  store %struct.task_struct* %67, %struct.task_struct** %6, align 8
  br label %80

68:                                               ; preds = %58
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* @measure_l3_residency, align 4
  %73 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @cpu_to_node(i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = call %struct.task_struct* @kthread_create_on_node(i32 %72, %struct.pseudo_lock_region* %73, i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %76)
  store %struct.task_struct* %77, %struct.task_struct** %6, align 8
  br label %79

78:                                               ; preds = %68
  br label %107

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %61
  br label %81

81:                                               ; preds = %80, %51
  %82 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %83 = call i64 @IS_ERR(%struct.task_struct* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %87 = call i32 @PTR_ERR(%struct.task_struct* %86)
  store i32 %87, i32* %8, align 4
  br label %107

88:                                               ; preds = %81
  %89 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @kthread_bind(%struct.task_struct* %89, i32 %90)
  %92 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %93 = call i32 @wake_up_process(%struct.task_struct* %92)
  %94 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %5, align 8
  %95 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %5, align 8
  %98 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 1
  %101 = zext i1 %100 to i32
  %102 = call i32 @wait_event_interruptible(i32 %96, i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %88
  br label %107

106:                                              ; preds = %88
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %106, %105, %85, %78, %42, %28, %20
  %108 = call i32 @mutex_unlock(i32* @rdtgroup_mutex)
  %109 = call i32 (...) @cpus_read_unlock()
  %110 = load i32, i32* %8, align 4
  ret i32 %110
}

declare dso_local i32 @cpus_read_lock(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpumask_first(i32*) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local %struct.task_struct* @kthread_create_on_node(i32, %struct.pseudo_lock_region*, i32, i8*, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @kthread_bind(%struct.task_struct*, i32) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cpus_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
