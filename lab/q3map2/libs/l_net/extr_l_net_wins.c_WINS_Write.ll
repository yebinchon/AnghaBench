; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_Write.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_s = type { i32 }
%struct.sockaddr = type { i32 }

@SOCKET_ERROR = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"WINS_Write: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WINS_Write(i32 %0, i32* %1, i32 %2, %struct.sockaddr_s* %3) #0 {
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
  %12 = load %struct.sockaddr_s*, %struct.sockaddr_s** %9, align 8
  %13 = icmp ne %struct.sockaddr_s* %12, null
  br i1 %13, label %14, label %48

14:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %46, %14
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load %struct.sockaddr_s*, %struct.sockaddr_s** %9, align 8
  %29 = bitcast %struct.sockaddr_s* %28 to %struct.sockaddr*
  %30 = call i32 @sendto(i32 %20, i32* %24, i32 %27, i32 0, %struct.sockaddr* %29, i32 4)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @SOCKET_ERROR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %19
  %35 = call i64 (...) @WSAGetLastError()
  %36 = load i64, i64* @WSAEWOULDBLOCK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @qfalse, align 4
  store i32 %39, i32* %5, align 4
  br label %88

40:                                               ; preds = %34
  %41 = call i32 @Sleep(i32 1000)
  br label %46

42:                                               ; preds = %19
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %42, %40
  br label %15

47:                                               ; preds = %15
  br label %75

48:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %73, %48
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @send(i32 %54, i32* %55, i32 %56, i32 0)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @SOCKET_ERROR, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = call i64 (...) @WSAGetLastError()
  %63 = load i64, i64* @WSAEWOULDBLOCK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @qfalse, align 4
  store i32 %66, i32* %5, align 4
  br label %88

67:                                               ; preds = %61
  %68 = call i32 @Sleep(i32 1000)
  br label %73

69:                                               ; preds = %53
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %69, %67
  br label %49

74:                                               ; preds = %49
  br label %75

75:                                               ; preds = %74, %47
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @SOCKET_ERROR, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = call i64 (...) @WSAGetLastError()
  %81 = call i32 @WINS_ErrorMessage(i64 %80)
  %82 = call i32 @WinPrint(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %83, %65, %38
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @sendto(i32, i32*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @WSAGetLastError(...) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @send(i32, i32*, i32, i32) #1

declare dso_local i32 @WinPrint(i8*, i32) #1

declare dso_local i32 @WINS_ErrorMessage(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
