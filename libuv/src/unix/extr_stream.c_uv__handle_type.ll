; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv__handle_type.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv__handle_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@UV_UNKNOWN_HANDLE = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@UV_NAMED_PIPE = common dso_local global i32 0, align 4
@UV_TCP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@UV_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__handle_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 @memset(%struct.sockaddr_storage* %4, i32 0, i32 4)
  store i32 4, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %11 = call i64 @getsockname(i32 %9, %struct.sockaddr* %10, i32* %5)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @UV_UNKNOWN_HANDLE, align 4
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  store i32 4, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SOL_SOCKET, align 4
  %18 = load i32, i32* @SO_TYPE, align 4
  %19 = call i64 @getsockopt(i32 %16, i32 %17, i32 %18, i32* %7, i32* %6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @UV_UNKNOWN_HANDLE, align 4
  store i32 %22, i32* %2, align 4
  br label %51

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SOCK_STREAM, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %34 [
    i32 128, label %30
    i32 130, label %32
    i32 129, label %32
  ]

30:                                               ; preds = %27
  %31 = load i32, i32* @UV_NAMED_PIPE, align 4
  store i32 %31, i32* %2, align 4
  br label %51

32:                                               ; preds = %27, %27
  %33 = load i32, i32* @UV_TCP, align 4
  store i32 %33, i32* %2, align 4
  br label %51

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SOCK_DGRAM, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 130
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 129
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @UV_UDP, align 4
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %43, %35
  %50 = load i32, i32* @UV_UNKNOWN_HANDLE, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %47, %32, %30, %21, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @getsockopt(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
