; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_async.c_uv__async_start.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_async.c_uv__async_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@UV_ENOSYS = common dso_local global i32 0, align 4
@UV__F_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"/proc/self/fd/%d\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@uv__async_io = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @uv__async_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__async_start(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

14:                                               ; preds = %1
  %15 = call i32 (...) @uv__async_eventfd()
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 -1, i32* %21, align 4
  br label %56

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @UV_ENOSYS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %22
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %28 = load i32, i32* @UV__F_NONBLOCK, align 4
  %29 = call i32 @uv__make_pipe(i32* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snprintf(i8* %33, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %38 = load i32, i32* @O_RDWR, align 4
  %39 = call i32 @uv__open_cloexec(i8* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @uv__close(i32 %44)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @uv__close(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %42, %32
  br label %54

54:                                               ; preds = %53, %26
  br label %55

55:                                               ; preds = %54, %22
  br label %56

56:                                               ; preds = %55, %18
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %77

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* @uv__async_io, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @uv__io_init(%struct.TYPE_7__* %63, i32 %64, i32 %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* @POLLIN, align 4
  %72 = call i32 @uv__io_start(%struct.TYPE_6__* %68, %struct.TYPE_7__* %70, i32 %71)
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %61, %59, %13
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @uv__async_eventfd(...) #1

declare dso_local i32 @uv__make_pipe(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @uv__open_cloexec(i8*, i32) #1

declare dso_local i32 @uv__close(i32) #1

declare dso_local i32 @uv__io_init(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @uv__io_start(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
