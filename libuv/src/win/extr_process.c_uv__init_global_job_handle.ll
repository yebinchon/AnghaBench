; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_process.c_uv__init_global_job_handle.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_process.c_uv__init_global_job_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@JOB_OBJECT_LIMIT_BREAKAWAY_OK = common dso_local global i32 0, align 4
@JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK = common dso_local global i32 0, align 4
@JOB_OBJECT_LIMIT_DIE_ON_UNHANDLED_EXCEPTION = common dso_local global i32 0, align 4
@JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE = common dso_local global i32 0, align 4
@uv_global_job_handle_ = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"CreateJobObjectW\00", align 1
@JobObjectExtendedLimitInformation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"SetInformationJobObject\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @uv__init_global_job_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__init_global_job_handle() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = call i32 @memset(%struct.TYPE_8__* %1, i32 0, i32 8)
  %4 = load i32, i32* @FALSE, align 4
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  store i32 %4, i32* %5, align 4
  %6 = call i32 @memset(%struct.TYPE_8__* %2, i32 0, i32 8)
  %7 = load i32, i32* @JOB_OBJECT_LIMIT_BREAKAWAY_OK, align 4
  %8 = load i32, i32* @JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @JOB_OBJECT_LIMIT_DIE_ON_UNHANDLED_EXCEPTION, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE, align 4
  %13 = or i32 %11, %12
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = call i32* @CreateJobObjectW(%struct.TYPE_8__* %1, i32* null)
  store i32* %16, i32** @uv_global_job_handle_, align 8
  %17 = load i32*, i32** @uv_global_job_handle_, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 @uv_fatal_error(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %0
  %23 = load i32*, i32** @uv_global_job_handle_, align 8
  %24 = load i32, i32* @JobObjectExtendedLimitInformation, align 4
  %25 = call i32 @SetInformationJobObject(i32* %23, i32 %24, %struct.TYPE_8__* %2, i32 8)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 @uv_fatal_error(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32* @CreateJobObjectW(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @uv_fatal_error(i32, i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SetInformationJobObject(i32*, i32, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
