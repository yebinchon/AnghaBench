; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_pipe.c_uv_pipe_connect.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_pipe.c_uv_pipe_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@UV_HANDLE_READABLE = common dso_local global i32 0, align 4
@UV_HANDLE_WRITABLE = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@UV_CONNECT = common dso_local global i32 0, align 4
@UV_EBADF = common dso_local global i32 0, align 4
@UV_ENOTSOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_pipe_connect(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_un, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = call i32 @uv__stream_fd(%struct.TYPE_9__* %13)
  %15 = icmp eq i32 %14, -1
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %4
  %20 = load i32, i32* @AF_UNIX, align 4
  %21 = load i32, i32* @SOCK_STREAM, align 4
  %22 = call i32 @uv__socket(i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %87

26:                                               ; preds = %19
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %4
  %32 = call i32 @memset(%struct.sockaddr_un* %9, i32 0, i32 8)
  %33 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %9, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @uv__strscpy(i32 %34, i8* %35, i32 4)
  %37 = load i32, i32* @AF_UNIX, align 4
  %38 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %9, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %51, %31
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = call i32 @uv__stream_fd(%struct.TYPE_9__* %40)
  %42 = bitcast %struct.sockaddr_un* %9 to %struct.sockaddr*
  %43 = call i32 @connect(i32 %41, %struct.sockaddr* %42, i32 8)
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @EINTR, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  br i1 %52, label %39, label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @EINPROGRESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i64, i64* @errno, align 8
  %62 = call i32 @UV__ERR(i64 %61)
  store i32 %62, i32* %11, align 4
  br label %87

63:                                               ; preds = %56, %53
  store i32 0, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = bitcast %struct.TYPE_9__* %67 to i32*
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = call i32 @uv__stream_fd(%struct.TYPE_9__* %69)
  %71 = load i32, i32* @UV_HANDLE_READABLE, align 4
  %72 = load i32, i32* @UV_HANDLE_WRITABLE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @uv__stream_open(i32* %68, i32 %70, i32 %73)
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %66, %63
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* @POLLOUT, align 4
  %85 = call i32 @uv__io_start(i32 %81, %struct.TYPE_11__* %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %75
  br label %87

87:                                               ; preds = %86, %60, %25
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  store %struct.TYPE_10__* %91, %struct.TYPE_10__** %93, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = load i32, i32* @UV_CONNECT, align 4
  %99 = call i32 @uv__req_init(i32 %96, %struct.TYPE_10__* %97, i32 %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = bitcast %struct.TYPE_9__* %100 to i32*
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  store i32* %101, i32** %103, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = call i32 @QUEUE_INIT(i32* %108)
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %87
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = call i32 @uv__io_feed(i32 %115, %struct.TYPE_11__* %117)
  br label %119

119:                                              ; preds = %112, %87
  ret void
}

declare dso_local i32 @uv__stream_fd(%struct.TYPE_9__*) #1

declare dso_local i32 @uv__socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @uv__strscpy(i32, i8*, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @UV__ERR(i64) #1

declare dso_local i32 @uv__stream_open(i32*, i32, i32) #1

declare dso_local i32 @uv__io_start(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @uv__req_init(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @QUEUE_INIT(i32*) #1

declare dso_local i32 @uv__io_feed(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
