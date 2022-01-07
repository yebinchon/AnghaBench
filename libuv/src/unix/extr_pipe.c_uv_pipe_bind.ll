; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_pipe.c_uv_pipe_bind.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_pipe.c_uv_pipe_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@UV_EINVAL = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@UV_ENOENT = common dso_local global i32 0, align 4
@UV_EACCES = common dso_local global i32 0, align 4
@UV_HANDLE_BOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_pipe_bind(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_un, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = call i64 @uv__stream_fd(%struct.TYPE_6__* %10)
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @UV_EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @uv__strdup(i8* %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %21, i32* %3, align 4
  br label %70

22:                                               ; preds = %15
  store i8* null, i8** %5, align 8
  %23 = load i32, i32* @AF_UNIX, align 4
  %24 = load i32, i32* @SOCK_STREAM, align 4
  %25 = call i32 @uv__socket(i32 %23, i32 %24, i32 0)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %66

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %8, align 4
  %31 = call i32 @memset(%struct.sockaddr_un* %6, i32 0, i32 8)
  %32 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @uv__strscpy(i32 %33, i8* %34, i32 4)
  %36 = load i32, i32* @AF_UNIX, align 4
  %37 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %40 = call i64 @bind(i32 %38, %struct.sockaddr* %39, i32 8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %29
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @UV__ERR(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @UV_ENOENT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @UV_EACCES, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @uv__close(i32 %51)
  br label %66

53:                                               ; preds = %29
  %54 = load i32, i32* @UV_HANDLE_BOUND, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  store i32 0, i32* %3, align 4
  br label %70

66:                                               ; preds = %50, %28
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @uv__free(i8* %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %53, %20, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @uv__stream_fd(%struct.TYPE_6__*) #1

declare dso_local i8* @uv__strdup(i8*) #1

declare dso_local i32 @uv__socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @uv__strscpy(i32, i8*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i32 @uv__close(i32) #1

declare dso_local i32 @uv__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
