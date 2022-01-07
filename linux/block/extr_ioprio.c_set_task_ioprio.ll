; ModuleID = '/home/carl/AnghaBench/linux/block/extr_ioprio.c_set_task_ioprio.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_ioprio.c_set_task_ioprio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.io_context = type { i32 }
%struct.cred = type { i32, i32 }

@CAP_SYS_NICE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_task_ioprio(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_context*, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca %struct.cred*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %10, %struct.cred** %8, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %13 = call %struct.cred* @__task_cred(%struct.task_struct* %12)
  store %struct.cred* %13, %struct.cred** %9, align 8
  %14 = load %struct.cred*, %struct.cred** %9, align 8
  %15 = getelementptr inbounds %struct.cred, %struct.cred* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cred*, %struct.cred** %8, align 8
  %18 = getelementptr inbounds %struct.cred, %struct.cred* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @uid_eq(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %2
  %23 = load %struct.cred*, %struct.cred** %9, align 8
  %24 = getelementptr inbounds %struct.cred, %struct.cred* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cred*, %struct.cred** %8, align 8
  %27 = getelementptr inbounds %struct.cred, %struct.cred* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @uid_eq(i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @CAP_SYS_NICE, align 4
  %33 = call i32 @capable(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %63

39:                                               ; preds = %31, %22, %2
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @security_task_setioprio(%struct.task_struct* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %63

48:                                               ; preds = %39
  %49 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = load i32, i32* @NUMA_NO_NODE, align 4
  %52 = call %struct.io_context* @get_task_io_context(%struct.task_struct* %49, i32 %50, i32 %51)
  store %struct.io_context* %52, %struct.io_context** %7, align 8
  %53 = load %struct.io_context*, %struct.io_context** %7, align 8
  %54 = icmp ne %struct.io_context* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.io_context*, %struct.io_context** %7, align 8
  %58 = getelementptr inbounds %struct.io_context, %struct.io_context* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.io_context*, %struct.io_context** %7, align 8
  %60 = call i32 @put_io_context(%struct.io_context* %59)
  br label %61

61:                                               ; preds = %55, %48
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %46, %35
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @security_task_setioprio(%struct.task_struct*, i32) #1

declare dso_local %struct.io_context* @get_task_io_context(%struct.task_struct*, i32, i32) #1

declare dso_local i32 @put_io_context(%struct.io_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
