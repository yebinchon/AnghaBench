; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_Read.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_s = type { i32 }
%struct.sockaddr = type { i32 }

@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@WSAECONNREFUSED = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"WINS_Read: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WINS_Read(i32 %0, i32* %1, i32 %2, %struct.sockaddr_s* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sockaddr_s* %3, %struct.sockaddr_s** %9, align 8
  store i32 4, i32* %10, align 4
  %13 = load %struct.sockaddr_s*, %struct.sockaddr_s** %9, align 8
  %14 = icmp ne %struct.sockaddr_s* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.sockaddr_s*, %struct.sockaddr_s** %9, align 8
  %20 = bitcast %struct.sockaddr_s* %19 to %struct.sockaddr*
  %21 = call i32 @recvfrom(i32 %16, i32* %17, i32 %18, i32 0, %struct.sockaddr* %20, i32* %10)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %35

24:                                               ; preds = %15
  %25 = call i32 (...) @WSAGetLastError()
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @WSAEWOULDBLOCK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @WSAECONNREFUSED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %24
  store i32 0, i32* %5, align 4
  br label %66

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %15
  br label %56

36:                                               ; preds = %4
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @recv(i32 %37, i32* %38, i32 %39, i32 0)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @SOCKET_ERROR, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = call i32 (...) @WSAGetLastError()
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @WSAEWOULDBLOCK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @WSAECONNREFUSED, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %44
  store i32 0, i32* %5, align 4
  br label %66

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %36
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @SOCKET_ERROR, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = call i32 (...) @WSAGetLastError()
  %62 = call i32 @WINS_ErrorMessage(i32 %61)
  %63 = call i32 @WinPrint(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %53, %33
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @recvfrom(i32, i32*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @recv(i32, i32*, i32, i32) #1

declare dso_local i32 @WinPrint(i8*, i32) #1

declare dso_local i32 @WINS_ErrorMessage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
