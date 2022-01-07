; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_WINS_Write.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_WINS_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_s = type { i32 }
%struct.sockaddr = type { i32 }

@SOCKET_ERROR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
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
  store i32 0, i32* %10, align 4
  %12 = load %struct.sockaddr_s*, %struct.sockaddr_s** %9, align 8
  %13 = icmp ne %struct.sockaddr_s* %12, null
  br i1 %13, label %14, label %47

14:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %45, %14
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %46

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
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = call i64 (...) @WSAGetLastError()
  %36 = load i64, i64* @EAGAIN, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @qfalse, align 4
  store i32 %39, i32* %5, align 4
  br label %86

40:                                               ; preds = %34
  br label %45

41:                                               ; preds = %19
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %41, %40
  br label %15

46:                                               ; preds = %15
  br label %73

47:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %71, %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @send(i32 %53, i32* %54, i32 %55, i32 0)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @SOCKET_ERROR, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = call i64 (...) @WSAGetLastError()
  %62 = load i64, i64* @EAGAIN, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @qfalse, align 4
  store i32 %65, i32* %5, align 4
  br label %86

66:                                               ; preds = %60
  br label %71

67:                                               ; preds = %52
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %67, %66
  br label %48

72:                                               ; preds = %48
  br label %73

73:                                               ; preds = %72, %46
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @SOCKET_ERROR, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = call i64 (...) @WSAGetLastError()
  %79 = call i32 @WINS_ErrorMessage(i64 %78)
  %80 = call i32 @WinPrint(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %77, %73
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %81, %64, %38
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @sendto(i32, i32*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @WSAGetLastError(...) #1

declare dso_local i32 @send(i32, i32*, i32, i32) #1

declare dso_local i32 @WinPrint(i8*, i32) #1

declare dso_local i32 @WINS_ErrorMessage(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
