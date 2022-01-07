; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc-send-recv.c_recv_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc-send-recv.c_recv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %union.handles, %union.handles }
%struct.TYPE_5__ = type { i32 }
%union.handles = type { i32 }

@ctx = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@recv_cb_count = common dso_local global i32 0, align 4
@UV_EOF = common dso_local global i64 0, align 8
@UV_NAMED_PIPE = common dso_local global i64 0, align 8
@UV_TCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*)* @recv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_cb(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.handles*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 1)
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  br label %17

17:                                               ; preds = %83, %3
  %18 = load i32, i32* @recv_cb_count, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @recv_cb_count, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store %union.handles* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 3), %union.handles** %10, align 8
  br label %23

22:                                               ; preds = %17
  store %union.handles* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 2), %union.handles** %10, align 8
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @UV_EOF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @recv_cb_count, align 4
  %29 = icmp eq i32 %28, 2
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  br label %82

32:                                               ; preds = %23
  %33 = load i64, i64* %5, align 8
  %34 = icmp sge i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = call i64 @uv_pipe_pending_count(%struct.TYPE_5__* %37)
  %39 = icmp sgt i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = call i64 @uv_pipe_pending_type(%struct.TYPE_5__* %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 0), align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @UV_NAMED_PIPE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %32
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 1, i32 0), align 8
  %54 = load %union.handles*, %union.handles** %10, align 8
  %55 = bitcast %union.handles* %54 to i32*
  %56 = call i32 @uv_pipe_init(i32 %53, i32* %55, i32 0)
  store i32 %56, i32* %9, align 4
  br label %69

57:                                               ; preds = %32
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @UV_TCP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 1, i32 0), align 8
  %63 = load %union.handles*, %union.handles** %10, align 8
  %64 = bitcast %union.handles* %63 to i32*
  %65 = call i32 @uv_tcp_init(i32 %62, i32* %64)
  store i32 %65, i32* %9, align 4
  br label %68

66:                                               ; preds = %57
  %67 = call i32 (...) @abort() #3
  unreachable

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %52
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @ASSERT(i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load %union.handles*, %union.handles** %10, align 8
  %76 = bitcast %union.handles* %75 to i32*
  %77 = call i32 @uv_accept(i32* %74, i32* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @ASSERT(i32 %80)
  br label %82

82:                                               ; preds = %69, %27
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %85 = call i64 @uv_pipe_pending_count(%struct.TYPE_5__* %84)
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %17, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @recv_cb_count, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32 @uv_close(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 1, i32 0), i32* null)
  br label %92

92:                                               ; preds = %90, %87
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

declare dso_local i32 @uv_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
