; ModuleID = '/home/carl/AnghaBench/libevent/extr_event_iocp.c_loop.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event_iocp.c_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_iocp_port = type { i64, i64, i32, i32, i64, i32 }

@INFINITE = common dso_local global i64 0, align 8
@NOTIFICATION_KEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"GetQueuedCompletionStatus exited with no event.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.event_iocp_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.event_iocp_port*
  store %struct.event_iocp_port* %11, %struct.event_iocp_port** %3, align 8
  %12 = load %struct.event_iocp_port*, %struct.event_iocp_port** %3, align 8
  %13 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load %struct.event_iocp_port*, %struct.event_iocp_port** %3, align 8
  %16 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load i64, i64* %4, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* @INFINITE, align 8
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %20, %1
  br label %23

23:                                               ; preds = %22, %70
  store i32* null, i32** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @GetQueuedCompletionStatus(i32 %24, i32* %8, i64* %7, i32** %6, i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.event_iocp_port*, %struct.event_iocp_port** %3, align 8
  %28 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %27, i32 0, i32 2
  %29 = call i32 @EnterCriticalSection(i32* %28)
  %30 = load %struct.event_iocp_port*, %struct.event_iocp_port** %3, align 8
  %31 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %23
  %35 = load %struct.event_iocp_port*, %struct.event_iocp_port** %3, align 8
  %36 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.event_iocp_port*, %struct.event_iocp_port** %3, align 8
  %42 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ReleaseSemaphore(i32 %43, i32 1, i32* null)
  br label %45

45:                                               ; preds = %40, %34
  %46 = load %struct.event_iocp_port*, %struct.event_iocp_port** %3, align 8
  %47 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %46, i32 0, i32 2
  %48 = call i32 @LeaveCriticalSection(i32* %47)
  br label %90

49:                                               ; preds = %23
  %50 = load %struct.event_iocp_port*, %struct.event_iocp_port** %3, align 8
  %51 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %50, i32 0, i32 2
  %52 = call i32 @LeaveCriticalSection(i32* %51)
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @NOTIFICATION_KEY, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load i32*, i32** %6, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32*, i32** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @handle_entry(i32* %60, i64 %61, i32 %62, i32 %63)
  br label %70

65:                                               ; preds = %56, %49
  %66 = load i32*, i32** %6, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %71

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %59
  br label %23

71:                                               ; preds = %68
  %72 = call i32 @event_warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.event_iocp_port*, %struct.event_iocp_port** %3, align 8
  %74 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %73, i32 0, i32 2
  %75 = call i32 @EnterCriticalSection(i32* %74)
  %76 = load %struct.event_iocp_port*, %struct.event_iocp_port** %3, align 8
  %77 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %77, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = load %struct.event_iocp_port*, %struct.event_iocp_port** %3, align 8
  %83 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ReleaseSemaphore(i32 %84, i32 1, i32* null)
  br label %86

86:                                               ; preds = %81, %71
  %87 = load %struct.event_iocp_port*, %struct.event_iocp_port** %3, align 8
  %88 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %87, i32 0, i32 2
  %89 = call i32 @LeaveCriticalSection(i32* %88)
  br label %90

90:                                               ; preds = %86, %45
  ret void
}

declare dso_local i32 @GetQueuedCompletionStatus(i32, i32*, i64*, i32**, i64) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @ReleaseSemaphore(i32, i32, i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @handle_entry(i32*, i64, i32, i32) #1

declare dso_local i32 @event_warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
