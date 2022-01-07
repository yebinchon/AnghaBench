; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_move_task.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_move_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.rdtgroup = type { i32 }
%struct.kernfs_open_file = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"No task %d\0A\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.rdtgroup*, %struct.kernfs_open_file*)* @rdtgroup_move_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdtgroup_move_task(i64 %0, %struct.rdtgroup* %1, %struct.kernfs_open_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.rdtgroup*, align 8
  %7 = alloca %struct.kernfs_open_file*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.rdtgroup* %1, %struct.rdtgroup** %6, align 8
  store %struct.kernfs_open_file* %2, %struct.kernfs_open_file** %7, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.task_struct* @find_task_by_vpid(i64 %14)
  store %struct.task_struct* %15, %struct.task_struct** %8, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %17 = icmp ne %struct.task_struct* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = call i32 (...) @rcu_read_unlock()
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @rdt_last_cmd_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @ESRCH, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %44

24:                                               ; preds = %13
  br label %27

25:                                               ; preds = %3
  %26 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %26, %struct.task_struct** %8, align 8
  br label %27

27:                                               ; preds = %25, %24
  %28 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %29 = call i32 @get_task_struct(%struct.task_struct* %28)
  %30 = call i32 (...) @rcu_read_unlock()
  %31 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %32 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %7, align 8
  %33 = call i32 @rdtgroup_task_write_permission(%struct.task_struct* %31, %struct.kernfs_open_file* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %38 = load %struct.rdtgroup*, %struct.rdtgroup** %6, align 8
  %39 = call i32 @__rdtgroup_move_task(%struct.task_struct* %37, %struct.rdtgroup* %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %27
  %41 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %42 = call i32 @put_task_struct(%struct.task_struct* %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rdt_last_cmd_printf(i8*, i64) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rdtgroup_task_write_permission(%struct.task_struct*, %struct.kernfs_open_file*) #1

declare dso_local i32 @__rdtgroup_move_task(%struct.task_struct*, %struct.rdtgroup*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
