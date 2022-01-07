; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_linux-core.c_uv__platform_invalidate_fd.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_linux-core.c_uv__platform_invalidate_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64* }
%struct.epoll_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EPOLL_CTL_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv__platform_invalidate_fd(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.epoll_event*, align 8
  %6 = alloca %struct.epoll_event, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i64*, i64** %10, align 8
  %12 = icmp ne i64* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.epoll_event*
  store %struct.epoll_event* %27, %struct.epoll_event** %5, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds i64, i64* %30, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  %37 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %38 = icmp ne %struct.epoll_event* %37, null
  br i1 %38, label %39, label %64

39:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %40

40:                                               ; preds = %60, %39
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %45, i64 %46
  %48 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %54, i64 %55
  %57 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 -1, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %44
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %40

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63, %2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = call i32 @memset(%struct.epoll_event* %6, i32 0, i32 4)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @EPOLL_CTL_DEL, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @epoll_ctl(i64 %73, i32 %74, i32 %75, %struct.epoll_event* %6)
  br label %77

77:                                               ; preds = %69, %64
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.epoll_event*, i32, i32) #1

declare dso_local i32 @epoll_ctl(i64, i32, i32, %struct.epoll_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
