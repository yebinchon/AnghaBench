; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_OpenReliableSocket.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_OpenReliableSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"WINS_OpenReliableSocket: %s\0A\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"setsockopt error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WINS_OpenReliableSocket(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 -1, i32* %6, align 4
  %7 = load i32, i32* @AF_INET, align 4
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = call i32 @socket(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = call i32 (...) @WSAGetLastError()
  %13 = call i32 @WINS_ErrorMessage(i32 %12)
  %14 = call i32 (i8*, ...) @WinPrint(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 -1, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  %16 = bitcast %struct.sockaddr_in* %5 to i8*
  %17 = call i32 @memset(i8* %16, i32 0, i32 12)
  %18 = load i32, i32* @AF_INET, align 4
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @INADDR_ANY, align 4
  %21 = call i32 @htonl(i32 %20)
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @htons(i32 %24)
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = bitcast %struct.sockaddr_in* %5 to i8*
  %29 = call i32 @bind(i32 %27, i8* %28, i32 12)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %37

31:                                               ; preds = %15
  %32 = call i32 (...) @WSAGetLastError()
  %33 = call i32 @WINS_ErrorMessage(i32 %32)
  %34 = call i32 (i8*, ...) @WinPrint(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @closesocket(i32 %35)
  store i32 -1, i32* %2, align 4
  br label %52

37:                                               ; preds = %15
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IPPROTO_TCP, align 4
  %40 = load i32, i32* @TCP_NODELAY, align 4
  %41 = bitcast i32* %6 to i8*
  %42 = call i64 @setsockopt(i32 %38, i32 %39, i32 %40, i8* %41, i32 4)
  %43 = load i64, i64* @SOCKET_ERROR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = call i32 (...) @WSAGetLastError()
  %47 = call i32 @WINS_ErrorMessage(i32 %46)
  %48 = call i32 (i8*, ...) @WinPrint(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = call i32 (i8*, ...) @WinPrint(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %37
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %31, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @WinPrint(i8*, ...) #1

declare dso_local i32 @WINS_ErrorMessage(i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bind(i32, i8*, i32) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
