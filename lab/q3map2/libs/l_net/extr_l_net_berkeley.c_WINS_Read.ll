; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_WINS_Read.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_WINS_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_s = type { i32 }
%struct.sockaddr = type { i32 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i64 0, align 8
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
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sockaddr_s* %3, %struct.sockaddr_s** %9, align 8
  store i32 4, i32* %10, align 4
  %12 = load %struct.sockaddr_s*, %struct.sockaddr_s** %9, align 8
  %13 = icmp ne %struct.sockaddr_s* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.sockaddr_s*, %struct.sockaddr_s** %9, align 8
  %19 = bitcast %struct.sockaddr_s* %18 to %struct.sockaddr*
  %20 = call i32 @recvfrom(i32 %15, i32* %16, i32 %17, i32 0, %struct.sockaddr* %19, i32* %10)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %33

23:                                               ; preds = %14
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EAGAIN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ENOTCONN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23
  store i32 0, i32* %5, align 4
  br label %67

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %14
  br label %57

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @recv(i32 %35, i32* %36, i32 %37, i32 0)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %67

42:                                               ; preds = %34
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @SOCKET_ERROR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @EAGAIN, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @ENOTCONN, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46
  store i32 0, i32* %5, align 4
  br label %67

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @SOCKET_ERROR, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = call i32 (...) @WSAGetLastError()
  %63 = call i32 @WINS_ErrorMessage(i32 %62)
  %64 = call i32 @WinPrint(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %54, %41, %31
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @recvfrom(i32, i32*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @recv(i32, i32*, i32, i32) #1

declare dso_local i32 @WinPrint(i8*, i32) #1

declare dso_local i32 @WINS_ErrorMessage(i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
