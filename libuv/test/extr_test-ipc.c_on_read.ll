; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_on_read.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_on_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@UV_EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"error recving on channel: %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"got %d bytes\0A\00", align 1
@tcp_server_listening = common dso_local global i32 0, align 4
@UV_UNKNOWN_HANDLE = common dso_local global i64 0, align 8
@read_cb_called = common dso_local global i32 0, align 4
@UV_TCP = common dso_local global i64 0, align 8
@tcp_server = common dso_local global i32 0, align 4
@BACKLOG = common dso_local global i32 0, align 4
@on_connection = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"world\0A\00", align 1
@write_req = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"accepted_connection\0A\00", align 1
@remote_conn_accepted = common dso_local global i32 0, align 4
@channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, %struct.TYPE_5__*)* @on_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_read(i32* %0, i64 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %12 = load i32*, i32** %4, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @free(i64 %18)
  br label %137

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
  br label %137

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
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @uv_pipe_pending_type(i32* %42)
  store i64 %43, i64* %9, align 8
  %44 = load i32, i32* @tcp_server_listening, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %112, label %46

46:                                               ; preds = %37
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @uv_pipe_pending_count(i32* %47)
  %49 = icmp eq i32 1, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load i64, i64* %5, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @UV_UNKNOWN_HANDLE, align 8
  %62 = icmp ne i64 %60, %61
  br label %63

63:                                               ; preds = %59, %54, %46
  %64 = phi i1 [ false, %54 ], [ false, %46 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  %67 = load i32, i32* @read_cb_called, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @read_cb_called, align 4
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @UV_TCP, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @ASSERT(i32 %72)
  %74 = call i32 (...) @uv_default_loop()
  %75 = call i32 @uv_tcp_init(i32 %74, i32* @tcp_server)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @ASSERT(i32 %78)
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @uv_accept(i32* %80, i32* @tcp_server)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @ASSERT(i32 %84)
  %86 = load i32, i32* @BACKLOG, align 4
  %87 = load i32, i32* @on_connection, align 4
  %88 = call i32 @uv_listen(i32* @tcp_server, i32 %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @ASSERT(i32 %91)
  store i32 1, i32* @tcp_server_listening, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %5, align 8
  %97 = call i64 @memcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %95, i64 %96)
  %98 = icmp eq i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @ASSERT(i32 %99)
  %101 = call i64 @uv_buf_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i64 %101, i64* %102, align 8
  %103 = bitcast %struct.TYPE_5__* %10 to i8*
  %104 = bitcast %struct.TYPE_5__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 8, i1 false)
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @uv_write(i32* @write_req, i32* %105, %struct.TYPE_5__* %10, i32 1, i32* null)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @ASSERT(i32 %109)
  %111 = call i32 (...) @make_many_connections()
  br label %132

112:                                              ; preds = %37
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %5, align 8
  %117 = call i64 @memcmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %115, i64 %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  %120 = load i32*, i32** %8, align 8
  %121 = call i32 @uv_pipe_pending_count(i32* %120)
  %122 = icmp eq i32 0, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @ASSERT(i32 %123)
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* @UV_UNKNOWN_HANDLE, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @ASSERT(i32 %128)
  store i32 1, i32* @remote_conn_accepted, align 4
  %130 = call i32 @uv_close(i32* @channel, i32* null)
  br label %131

131:                                              ; preds = %119, %112
  br label %132

132:                                              ; preds = %131, %63
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @free(i64 %135)
  br label %137

137:                                              ; preds = %132, %27, %15
  ret void
}

declare dso_local i32 @free(i64) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @uv_strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i64 @uv_pipe_pending_type(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_pipe_pending_count(i32*) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_accept(i32*, i32*) #1

declare dso_local i32 @uv_listen(i32*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i64, i64) #1

declare dso_local i64 @uv_buf_init(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @uv_write(i32*, i32*, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @make_many_connections(...) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
