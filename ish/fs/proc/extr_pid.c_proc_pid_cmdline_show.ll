; ModuleID = '/home/carl/AnghaBench/ish/fs/proc/extr_pid.c_proc_pid_cmdline_show.c'
source_filename = "/home/carl/AnghaBench/ish/fs/proc/extr_pid.c_proc_pid_cmdline_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_entry = type { i32 }
%struct.proc_data = type { i32 }
%struct.task = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@_ESRCH = common dso_local global i32 0, align 4
@_ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc_entry*, %struct.proc_data*)* @proc_pid_cmdline_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_pid_cmdline_show(%struct.proc_entry* %0, %struct.proc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc_entry*, align 8
  %5 = alloca %struct.proc_data*, align 8
  %6 = alloca %struct.task*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.proc_entry* %0, %struct.proc_entry** %4, align 8
  store %struct.proc_data* %1, %struct.proc_data** %5, align 8
  %10 = load %struct.proc_entry*, %struct.proc_entry** %4, align 8
  %11 = call %struct.task* @proc_get_task(%struct.proc_entry* %10)
  store %struct.task* %11, %struct.task** %6, align 8
  %12 = load %struct.task*, %struct.task** %6, align 8
  %13 = icmp eq %struct.task* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @_ESRCH, align 4
  store i32 %15, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.task*, %struct.task** %6, align 8
  %18 = getelementptr inbounds %struct.task, %struct.task* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.task*, %struct.task** %6, align 8
  %23 = getelementptr inbounds %struct.task, %struct.task* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %21, %26
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32* @malloc(i64 %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load i32, i32* @_ENOMEM, align 4
  store i32 %33, i32* %3, align 4
  br label %58

34:                                               ; preds = %16
  %35 = load %struct.task*, %struct.task** %6, align 8
  %36 = load %struct.task*, %struct.task** %6, align 8
  %37 = getelementptr inbounds %struct.task, %struct.task* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @user_read_task(%struct.task* %35, i64 %40, i32* %41, i64 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @proc_buf_write(%struct.proc_data* %44, i32* %45, i64 %46)
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @free(i32* %48)
  %50 = load %struct.task*, %struct.task** %6, align 8
  %51 = call i32 @proc_put_task(%struct.task* %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %58

55:                                               ; preds = %34
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %54, %32, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.task* @proc_get_task(%struct.proc_entry*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @user_read_task(%struct.task*, i64, i32*, i64) #1

declare dso_local i32 @proc_buf_write(%struct.proc_data*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @proc_put_task(%struct.task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
