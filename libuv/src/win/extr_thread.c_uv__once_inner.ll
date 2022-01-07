; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_thread.c_uv__once_inner.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_thread.c_uv__once_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"CreateEvent\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, void ()*)* @uv__once_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__once_inner(%struct.TYPE_3__* %0, void ()* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca void ()*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store void ()* %1, void ()** %4, align 8
  %8 = call i64 @CreateEvent(i32* null, i32 1, i32 0, i32* null)
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i32 (...) @GetLastError()
  %13 = call i32 @uv_fatal_error(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @InterlockedCompareExchangePointer(i32* %16, i64 %17, i32* null)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load void ()*, void ()** %4, align 8
  call void %23()
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @SetEvent(i64 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %42

31:                                               ; preds = %14
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @CloseHandle(i64 %32)
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @INFINITE, align 4
  %36 = call i64 @WaitForSingleObject(i64 %34, i32 %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @WAIT_OBJECT_0, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  br label %42

42:                                               ; preds = %31, %22
  ret void
}

declare dso_local i64 @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @uv_fatal_error(i32, i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i32*, i64, i32*) #1

declare dso_local i64 @SetEvent(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @WaitForSingleObject(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
