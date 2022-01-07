; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_group.c_task_setsid.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_group.c_task_setsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i32, %struct.tgroup* }
%struct.tgroup = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.pid = type { i32, i32 }

@pids_lock = common dso_local global i32 0, align 4
@_EPERM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @task_setsid(%struct.task* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task*, align 8
  %4 = alloca %struct.tgroup*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pid*, align 8
  store %struct.task* %0, %struct.task** %3, align 8
  %7 = call i32 @lock(i32* @pids_lock)
  %8 = load %struct.task*, %struct.task** %3, align 8
  %9 = getelementptr inbounds %struct.task, %struct.task* %8, i32 0, i32 1
  %10 = load %struct.tgroup*, %struct.tgroup** %9, align 8
  store %struct.tgroup* %10, %struct.tgroup** %4, align 8
  %11 = load %struct.tgroup*, %struct.tgroup** %4, align 8
  %12 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.tgroup*, %struct.tgroup** %4, align 8
  %17 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.tgroup*, %struct.tgroup** %4, align 8
  %23 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %1
  %28 = call i32 @unlock(i32* @pids_lock)
  %29 = load i64, i64* @_EPERM, align 8
  store i64 %29, i64* %2, align 8
  br label %58

30:                                               ; preds = %21
  %31 = load %struct.task*, %struct.task** %3, align 8
  %32 = call i32 @task_leave_session(%struct.task* %31)
  %33 = load %struct.task*, %struct.task** %3, align 8
  %34 = getelementptr inbounds %struct.task, %struct.task* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.pid* @pid_get(i32 %35)
  store %struct.pid* %36, %struct.pid** %6, align 8
  %37 = load %struct.pid*, %struct.pid** %6, align 8
  %38 = getelementptr inbounds %struct.pid, %struct.pid* %37, i32 0, i32 1
  %39 = load %struct.tgroup*, %struct.tgroup** %4, align 8
  %40 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %39, i32 0, i32 3
  %41 = call i32 @list_add(i32* %38, i32* %40)
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.tgroup*, %struct.tgroup** %4, align 8
  %44 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.tgroup*, %struct.tgroup** %4, align 8
  %46 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %45, i32 0, i32 2
  %47 = call i32 @list_remove_safe(i32* %46)
  %48 = load %struct.pid*, %struct.pid** %6, align 8
  %49 = getelementptr inbounds %struct.pid, %struct.pid* %48, i32 0, i32 0
  %50 = load %struct.tgroup*, %struct.tgroup** %4, align 8
  %51 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %50, i32 0, i32 2
  %52 = call i32 @list_add(i32* %49, i32* %51)
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.tgroup*, %struct.tgroup** %4, align 8
  %55 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = call i32 @unlock(i32* @pids_lock)
  %57 = load i64, i64* %5, align 8
  store i64 %57, i64* %2, align 8
  br label %58

58:                                               ; preds = %30, %27
  %59 = load i64, i64* %2, align 8
  ret i64 %59
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @task_leave_session(%struct.task*) #1

declare dso_local %struct.pid* @pid_get(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_remove_safe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
