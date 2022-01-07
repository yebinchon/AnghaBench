; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc-send-recv.c_read_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc-send-recv.c_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, %union.handles, i32, %union.handles }
%struct.TYPE_5__ = type { i32 }
%union.handles = type { i32 }

@UV_EOF = common dso_local global i64 0, align 8
@UV_ECONNABORTED = common dso_local global i64 0, align 8
@read_cb_count = common dso_local global i32 0, align 4
@ctx2 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@UV_NAMED_PIPE = common dso_local global i64 0, align 8
@UV_TCP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@write2_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*)* @read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_cb(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.handles*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @UV_EOF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @UV_ECONNABORTED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %3
  br label %104

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = bitcast i32* %22 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %8, align 8
  br label %24

24:                                               ; preds = %100, %21
  %25 = load i32, i32* @read_cb_count, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @read_cb_count, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store %union.handles* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx2, i32 0, i32 4), %union.handles** %11, align 8
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx2, i32 0, i32 3), i32** %12, align 8
  br label %30

29:                                               ; preds = %24
  store %union.handles* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx2, i32 0, i32 2), %union.handles** %11, align 8
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx2, i32 0, i32 1), i32** %12, align 8
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = icmp eq %struct.TYPE_5__* %31, getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx2, i32 0, i32 0)
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i64, i64* %5, align 8
  %36 = icmp sge i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = call i64 @uv_pipe_pending_count(%struct.TYPE_5__* %39)
  %41 = icmp sgt i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = call i64 @uv_pipe_pending_type(%struct.TYPE_5__* %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @UV_NAMED_PIPE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %30
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @UV_TCP, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %49, %30
  %54 = phi i1 [ true, %30 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @UV_NAMED_PIPE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx2, i32 0, i32 0, i32 0), align 4
  %62 = load %union.handles*, %union.handles** %11, align 8
  %63 = bitcast %union.handles* %62 to i32*
  %64 = call i32 @uv_pipe_init(i32 %61, i32* %63, i32 0)
  store i32 %64, i32* %10, align 4
  br label %77

65:                                               ; preds = %53
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @UV_TCP, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx2, i32 0, i32 0, i32 0), align 4
  %71 = load %union.handles*, %union.handles** %11, align 8
  %72 = bitcast %union.handles* %71 to i32*
  %73 = call i32 @uv_tcp_init(i32 %70, i32* %72)
  store i32 %73, i32* %10, align 4
  br label %76

74:                                               ; preds = %65
  %75 = call i32 (...) @abort() #3
  unreachable

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %60
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @ASSERT(i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = load %union.handles*, %union.handles** %11, align 8
  %84 = bitcast %union.handles* %83 to i32*
  %85 = call i32 @uv_accept(i32* %82, i32* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @ASSERT(i32 %88)
  %90 = call i32 @uv_buf_init(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %90, i32* %7, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = load %union.handles*, %union.handles** %11, align 8
  %93 = bitcast %union.handles* %92 to i32*
  %94 = load i32, i32* @write2_cb, align 4
  %95 = call i32 @uv_write2(i32* %91, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx2, i32 0, i32 0, i32 0), i32* %7, i32 1, i32* %93, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @ASSERT(i32 %98)
  br label %100

100:                                              ; preds = %77
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %102 = call i64 @uv_pipe_pending_count(%struct.TYPE_5__* %101)
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %24, label %104

104:                                              ; preds = %20, %100
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_pipe_pending_count(%struct.TYPE_5__*) #1

declare dso_local i64 @uv_pipe_pending_type(%struct.TYPE_5__*) #1

declare dso_local i32 @uv_pipe_init(i32, i32*, i32) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @uv_accept(i32*, i32*) #1

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i32 @uv_write2(i32*, i32*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
