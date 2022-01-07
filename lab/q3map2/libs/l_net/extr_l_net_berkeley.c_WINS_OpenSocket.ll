; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_WINS_OpenSocket.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_WINS_OpenSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"WINS_OpenSocket: %s\0A\00", align 1
@FIONBIO = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WINS_OpenSocket(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %6, align 4
  %7 = load i32, i32* @PF_INET, align 4
  %8 = load i32, i32* @SOCK_DGRAM, align 4
  %9 = load i32, i32* @IPPROTO_UDP, align 4
  %10 = call i32 @socket(i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @SOCKET_ERROR, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i32 (...) @WSAGetLastError()
  %15 = call i32 @WINS_ErrorMessage(i32 %14)
  %16 = call i32 @WinPrint(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 -1, i32* %2, align 4
  br label %52

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @FIONBIO, align 4
  %20 = call i32 @ioctlsocket(i32 %18, i32 %19, i32* %6)
  %21 = load i32, i32* @SOCKET_ERROR, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = call i32 (...) @WSAGetLastError()
  %25 = call i32 @WINS_ErrorMessage(i32 %24)
  %26 = call i32 @WinPrint(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @closesocket(i32 %27)
  store i32 -1, i32* %2, align 4
  br label %52

29:                                               ; preds = %17
  %30 = bitcast %struct.sockaddr_in* %5 to i8*
  %31 = call i32 @memset(i8* %30, i32 0, i32 12)
  %32 = load i32, i32* @AF_INET, align 4
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @INADDR_ANY, align 4
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @htons(i32 %37)
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = bitcast %struct.sockaddr_in* %5 to i8*
  %42 = call i32 @bind(i32 %40, i8* %41, i32 12)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %50

44:                                               ; preds = %29
  %45 = call i32 (...) @WSAGetLastError()
  %46 = call i32 @WINS_ErrorMessage(i32 %45)
  %47 = call i32 @WinPrint(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @closesocket(i32 %48)
  store i32 -1, i32* %2, align 4
  br label %52

50:                                               ; preds = %29
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %44, %23, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @WinPrint(i8*, i32) #1

declare dso_local i32 @WINS_ErrorMessage(i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @ioctlsocket(i32, i32, i32*) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bind(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
