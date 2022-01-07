; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_poll.c_uv__fast_poll_create_peer_socket.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_poll.c_uv__fast_poll_create_peer_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@WSA_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@HANDLE_FLAG_INHERIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_4__*)* @uv__fast_poll_create_peer_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uv__fast_poll_create_peer_socket(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = load i32, i32* @WSA_FLAG_OVERLAPPED, align 4
  %18 = call i64 @WSASocketW(i32 %9, i32 %12, i32 %15, %struct.TYPE_4__* %16, i32 0, i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @INVALID_SOCKET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %23, i64* %3, align 8
  br label %46

24:                                               ; preds = %2
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %28 = call i32 @SetHandleInformation(i32 %26, i32 %27, i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %42

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %4, align 4
  %35 = load i64, i64* %6, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32* @CreateIoCompletionPort(i32 %33, i32 %34, i32 %36, i32 0)
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %42

40:                                               ; preds = %31
  %41 = load i64, i64* %6, align 8
  store i64 %41, i64* %3, align 8
  br label %46

42:                                               ; preds = %39, %30
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @closesocket(i64 %43)
  %45 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %42, %40, %22
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i64 @WSASocketW(i32, i32, i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @SetHandleInformation(i32, i32, i32) #1

declare dso_local i32* @CreateIoCompletionPort(i32, i32, i32, i32) #1

declare dso_local i32 @closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
