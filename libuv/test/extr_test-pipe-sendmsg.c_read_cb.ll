; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-pipe-sendmsg.c_read_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-pipe-sendmsg.c_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@UV_NAMED_PIPE = common dso_local global i64 0, align 8
@incoming_count = common dso_local global i32 0, align 4
@incoming = common dso_local global %struct.TYPE_7__* null, align 8
@close_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*)* @read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_cb(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp sge i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  br label %17

17:                                               ; preds = %21, %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = call i64 @uv_pipe_pending_count(%struct.TYPE_7__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = call i64 @uv_pipe_pending_type(%struct.TYPE_7__* %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @UV_NAMED_PIPE, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32, i32* @incoming_count, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @incoming, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %30)
  %32 = icmp ult i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @incoming, align 8
  %36 = load i32, i32* @incoming_count, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* @incoming_count, align 4
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %38
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %8, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = call i64 @uv_pipe_init(i32 %42, %struct.TYPE_7__* %43, i32 0)
  %45 = icmp eq i64 0, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = bitcast %struct.TYPE_7__* %49 to i32*
  %51 = call i64 @uv_accept(i32* %48, i32* %50)
  %52 = icmp eq i64 0, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  br label %17

55:                                               ; preds = %17
  %56 = load i32, i32* @incoming_count, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @incoming, align 8
  %58 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %57)
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %88

61:                                               ; preds = %55
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = bitcast %struct.TYPE_7__* %62 to i32*
  %64 = call i64 @uv_read_stop(i32* %63)
  %65 = icmp eq i64 0, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = bitcast %struct.TYPE_7__* %68 to i32*
  %70 = load i32, i32* @close_cb, align 4
  %71 = call i32 @uv_close(i32* %69, i32 %70)
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %85, %61
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @incoming, align 8
  %75 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %74)
  %76 = icmp ult i32 %73, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** @incoming, align 8
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = bitcast %struct.TYPE_7__* %81 to i32*
  %83 = load i32, i32* @close_cb, align 4
  %84 = call i32 @uv_close(i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %10, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %72

88:                                               ; preds = %60, %72
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_pipe_pending_count(%struct.TYPE_7__*) #1

declare dso_local i64 @uv_pipe_pending_type(%struct.TYPE_7__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @uv_pipe_init(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @uv_accept(i32*, i32*) #1

declare dso_local i64 @uv_read_stop(i32*) #1

declare dso_local i32 @uv_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
