; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_task_write_permission.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_task_write_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.kernfs_open_file = type { i32 }
%struct.cred = type { i32, i32, i32 }

@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No permission to move task %d\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.kernfs_open_file*)* @rdtgroup_task_write_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdtgroup_task_write_permission(%struct.task_struct* %0, %struct.kernfs_open_file* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.kernfs_open_file*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.kernfs_open_file* %1, %struct.kernfs_open_file** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = call %struct.cred* @get_task_cred(%struct.task_struct* %8)
  store %struct.cred* %9, %struct.cred** %5, align 8
  %10 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %10, %struct.cred** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.cred*, %struct.cred** %6, align 8
  %12 = getelementptr inbounds %struct.cred, %struct.cred* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %15 = call i32 @uid_eq(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %2
  %18 = load %struct.cred*, %struct.cred** %6, align 8
  %19 = getelementptr inbounds %struct.cred, %struct.cred* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cred*, %struct.cred** %5, align 8
  %22 = getelementptr inbounds %struct.cred, %struct.cred* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @uid_eq(i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %17
  %27 = load %struct.cred*, %struct.cred** %6, align 8
  %28 = getelementptr inbounds %struct.cred, %struct.cred* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cred*, %struct.cred** %5, align 8
  %31 = getelementptr inbounds %struct.cred, %struct.cred* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @uid_eq(i32 %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %26
  %36 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rdt_last_cmd_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %35, %26, %17, %2
  %43 = load %struct.cred*, %struct.cred** %5, align 8
  %44 = call i32 @put_cred(%struct.cred* %43)
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local %struct.cred* @get_task_cred(%struct.task_struct*) #1

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @rdt_last_cmd_printf(i8*, i32) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
