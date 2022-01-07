; ModuleID = '/home/carl/AnghaBench/ish/fs/proc/extr_pid.c_proc_get_task.c'
source_filename = "/home/carl/AnghaBench/ish/fs/proc/extr_pid.c_proc_get_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i32 }
%struct.proc_entry = type { i32 }

@pids_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task* (%struct.proc_entry*)* @proc_get_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task* @proc_get_task(%struct.proc_entry* %0) #0 {
  %2 = alloca %struct.proc_entry*, align 8
  %3 = alloca %struct.task*, align 8
  store %struct.proc_entry* %0, %struct.proc_entry** %2, align 8
  %4 = call i32 @lock(i32* @pids_lock)
  %5 = load %struct.proc_entry*, %struct.proc_entry** %2, align 8
  %6 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.task* @pid_get_task(i32 %7)
  store %struct.task* %8, %struct.task** %3, align 8
  %9 = load %struct.task*, %struct.task** %3, align 8
  %10 = icmp eq %struct.task* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @unlock(i32* @pids_lock)
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.task*, %struct.task** %3, align 8
  ret %struct.task* %14
}

declare dso_local i32 @lock(i32*) #1

declare dso_local %struct.task* @pid_get_task(i32) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
