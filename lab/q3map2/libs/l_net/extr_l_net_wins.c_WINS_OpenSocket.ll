; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_OpenSocket.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_OpenSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
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
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 (...) @WSAGetLastError()
  %14 = call i32 @WINS_ErrorMessage(i32 %13)
  %15 = call i32 @WinPrint(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 -1, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @FIONBIO, align 4
  %19 = call i32 @ioctlsocket(i32 %17, i32 %18, i32* %6)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = call i32 (...) @WSAGetLastError()
  %23 = call i32 @WINS_ErrorMessage(i32 %22)
  %24 = call i32 @WinPrint(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @closesocket(i32 %25)
  store i32 -1, i32* %2, align 4
  br label %50

27:                                               ; preds = %16
  %28 = bitcast %struct.sockaddr_in* %5 to i8*
  %29 = call i32 @memset(i8* %28, i32 0, i32 12)
  %30 = load i32, i32* @AF_INET, align 4
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @INADDR_ANY, align 4
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @htons(i32 %35)
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = bitcast %struct.sockaddr_in* %5 to i8*
  %40 = call i32 @bind(i32 %38, i8* %39, i32 12)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %27
  %43 = call i32 (...) @WSAGetLastError()
  %44 = call i32 @WINS_ErrorMessage(i32 %43)
  %45 = call i32 @WinPrint(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @closesocket(i32 %46)
  store i32 -1, i32* %2, align 4
  br label %50

48:                                               ; preds = %27
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %42, %21, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
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
