; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_Accept.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_Accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_s = type { i32 }
%struct.sockaddr = type { i32 }

@INVALID_SOCKET = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"WINS_Accept: %s\0A\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"setsockopt error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WINS_Accept(i32 %0, %struct.sockaddr_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr_s* %1, %struct.sockaddr_s** %5, align 8
  store i32 4, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.sockaddr_s*, %struct.sockaddr_s** %5, align 8
  %11 = bitcast %struct.sockaddr_s* %10 to %struct.sockaddr*
  %12 = call i32 @accept(i32 %9, %struct.sockaddr* %11, i32* %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @INVALID_SOCKET, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = call i64 (...) @WSAGetLastError()
  %18 = load i64, i64* @WSAEWOULDBLOCK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %40

21:                                               ; preds = %16
  %22 = call i64 (...) @WSAGetLastError()
  %23 = call i32 @WINS_ErrorMessage(i64 %22)
  %24 = call i32 (i8*, ...) @WinPrint(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %3, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IPPROTO_TCP, align 4
  %28 = load i32, i32* @TCP_NODELAY, align 4
  %29 = bitcast i32* %8 to i8*
  %30 = call i64 @setsockopt(i32 %26, i32 %27, i32 %28, i8* %29, i32 4)
  %31 = load i64, i64* @SOCKET_ERROR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = call i64 (...) @WSAGetLastError()
  %35 = call i32 @WINS_ErrorMessage(i64 %34)
  %36 = call i32 (i8*, ...) @WinPrint(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = call i32 (i8*, ...) @WinPrint(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %25
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %21, %20
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @WSAGetLastError(...) #1

declare dso_local i32 @WinPrint(i8*, ...) #1

declare dso_local i32 @WINS_ErrorMessage(i64) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
