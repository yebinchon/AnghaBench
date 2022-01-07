; ModuleID = '/home/carl/AnghaBench/ish/fs/proc/extr_pid.c_proc_pid_exe_readlink.c'
source_filename = "/home/carl/AnghaBench/ish/fs/proc/extr_pid.c_proc_pid_exe_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_entry = type { i32 }
%struct.task = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@_ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc_entry*, i8*)* @proc_pid_exe_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_pid_exe_readlink(%struct.proc_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.task*, align 8
  %7 = alloca i32, align 4
  store %struct.proc_entry* %0, %struct.proc_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.proc_entry*, %struct.proc_entry** %4, align 8
  %9 = call %struct.task* @proc_get_task(%struct.proc_entry* %8)
  store %struct.task* %9, %struct.task** %6, align 8
  %10 = load %struct.task*, %struct.task** %6, align 8
  %11 = icmp eq %struct.task* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @_ESRCH, align 4
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.task*, %struct.task** %6, align 8
  %16 = getelementptr inbounds %struct.task, %struct.task* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @generic_getpath(i32 %19, i8* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.task*, %struct.task** %6, align 8
  %23 = call i32 @proc_put_task(%struct.task* %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %14, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.task* @proc_get_task(%struct.proc_entry*) #1

declare dso_local i32 @generic_getpath(i32, i8*) #1

declare dso_local i32 @proc_put_task(%struct.task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
