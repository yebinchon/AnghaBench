; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_pid_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_pid_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.perf_event* }
%struct.task_struct = type { i32 }

@init_pid_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32, i32)* @cpumsf_pid_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpumsf_pid_type(%struct.perf_event* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %41

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.task_struct* @find_task_by_pid_ns(i32 %12, i32* @init_pid_ns)
  store %struct.task_struct* %13, %struct.task_struct** %7, align 8
  store i32 -1, i32* %5, align 4
  %14 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  %17 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 1
  %19 = load %struct.perf_event*, %struct.perf_event** %18, align 8
  %20 = icmp ne %struct.perf_event* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 1
  %24 = load %struct.perf_event*, %struct.perf_event** %23, align 8
  store %struct.perf_event* %24, %struct.perf_event** %4, align 8
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @__task_pid_nr_ns(%struct.task_struct* %26, i32 %27, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %25
  %35 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %36 = call i32 @pid_alive(%struct.task_struct* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %34, %25
  br label %40

40:                                               ; preds = %39, %11
  br label %41

41:                                               ; preds = %40, %10
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.task_struct* @find_task_by_pid_ns(i32, i32*) #1

declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct*, i32, i32) #1

declare dso_local i32 @pid_alive(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
