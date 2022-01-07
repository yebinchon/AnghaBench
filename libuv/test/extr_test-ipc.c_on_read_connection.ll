; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_on_read_connection.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_on_read_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@UV_EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"error recving on channel: %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"got %d bytes\0A\00", align 1
@UV_UNKNOWN_HANDLE = common dso_local global i64 0, align 8
@read_cb_called = common dso_local global i32 0, align 4
@UV_TCP = common dso_local global i64 0, align 8
@tcp_connection = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"world\0A\00", align 1
@write_req = common dso_local global i32 0, align 4
@on_tcp_write = common dso_local global i32 0, align 4
@on_read_alloc = common dso_local global i32 0, align 4
@on_tcp_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, %struct.TYPE_5__*)* @on_read_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_read_connection(i32* %0, i64 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %12 = load i32*, i32** %4, align 8
  store i32* %12, i32** %9, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @free(i64 %18)
  br label %112

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @UV_EOF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @free(i64 %30)
  br label %112

32:                                               ; preds = %23
  %33 = load i64, i64* %5, align 8
  %34 = call i8* @uv_strerror(i64 %33)
  %35 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = call i32 (...) @abort() #4
  unreachable

37:                                               ; preds = %20
  %38 = load i32, i32* @stderr, align 4
  %39 = load i64, i64* %5, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @uv_pipe_pending_count(i32* %42)
  %44 = icmp eq i32 1, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @uv_pipe_pending_type(i32* %47)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %37
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @UV_UNKNOWN_HANDLE, align 8
  %59 = icmp ne i64 %57, %58
  br label %60

60:                                               ; preds = %56, %51, %37
  %61 = phi i1 [ false, %51 ], [ false, %37 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = load i32, i32* @read_cb_called, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @read_cb_called, align 4
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @UV_TCP, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @ASSERT(i32 %69)
  %71 = call i32 (...) @uv_default_loop()
  %72 = call i32 @uv_tcp_init(i32 %71, i32* @tcp_connection)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @uv_accept(i32* %77, i32* @tcp_connection)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i64 @memcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %85, i64 %86)
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @ASSERT(i32 %89)
  %91 = call i64 @uv_buf_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i64 %91, i64* %92, align 8
  %93 = bitcast %struct.TYPE_5__* %8 to i8*
  %94 = bitcast %struct.TYPE_5__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 8, i1 false)
  %95 = load i32, i32* @on_tcp_write, align 4
  %96 = call i32 @uv_write(i32* @write_req, i32* @tcp_connection, %struct.TYPE_5__* %8, i32 1, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @ASSERT(i32 %99)
  %101 = load i32, i32* @on_read_alloc, align 4
  %102 = load i32, i32* @on_tcp_read, align 4
  %103 = call i32 @uv_read_start(i32* @tcp_connection, i32 %101, i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @ASSERT(i32 %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @free(i64 %110)
  br label %112

112:                                              ; preds = %60, %27, %15
  ret void
}

declare dso_local i32 @free(i64) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @uv_strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_pipe_pending_count(i32*) #1

declare dso_local i64 @uv_pipe_pending_type(i32*) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_accept(i32*, i32*) #1

declare dso_local i64 @memcmp(i8*, i64, i64) #1

declare dso_local i64 @uv_buf_init(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @uv_write(i32*, i32*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @uv_read_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
