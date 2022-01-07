; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_Config.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@net_enabled = common dso_local global %struct.TYPE_2__* null, align 8
@networkingEnabled = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@ip_socket = common dso_local global i64 0, align 8
@INVALID_SOCKET = common dso_local global i64 0, align 8
@multicast6_socket = common dso_local global i64 0, align 8
@ip6_socket = common dso_local global i64 0, align 8
@socks_socket = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NET_Config(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = call i64 (...) @NET_GetCvars()
  store i64 %6, i64* %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @net_enabled, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @networkingEnabled, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %98

20:                                               ; preds = %16, %12
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @networkingEnabled, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i64, i64* %2, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* @qtrue, align 8
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* @qtrue, align 8
  store i64 %29, i64* %5, align 8
  br label %33

30:                                               ; preds = %24
  %31 = load i64, i64* @qfalse, align 8
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* @qfalse, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %30, %27
  br label %45

34:                                               ; preds = %20
  %35 = load i64, i64* %2, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* @qfalse, align 8
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* @qtrue, align 8
  store i64 %39, i64* %5, align 8
  br label %43

40:                                               ; preds = %34
  %41 = load i64, i64* @qtrue, align 8
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* @qfalse, align 8
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i64, i64* %2, align 8
  store i64 %44, i64* @networkingEnabled, align 8
  br label %45

45:                                               ; preds = %43, %33
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %86

48:                                               ; preds = %45
  %49 = load i64, i64* @ip_socket, align 8
  %50 = load i64, i64* @INVALID_SOCKET, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i64, i64* @ip_socket, align 8
  %54 = call i32 @closesocket(i64 %53)
  %55 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %55, i64* @ip_socket, align 8
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i64, i64* @multicast6_socket, align 8
  %58 = load i64, i64* @INVALID_SOCKET, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i64, i64* @multicast6_socket, align 8
  %62 = load i64, i64* @ip6_socket, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i64, i64* @multicast6_socket, align 8
  %66 = call i32 @closesocket(i64 %65)
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %68, i64* @multicast6_socket, align 8
  br label %69

69:                                               ; preds = %67, %56
  %70 = load i64, i64* @ip6_socket, align 8
  %71 = load i64, i64* @INVALID_SOCKET, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i64, i64* @ip6_socket, align 8
  %75 = call i32 @closesocket(i64 %74)
  %76 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %76, i64* @ip6_socket, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i64, i64* @socks_socket, align 8
  %79 = load i64, i64* @INVALID_SOCKET, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i64, i64* @socks_socket, align 8
  %83 = call i32 @closesocket(i64 %82)
  %84 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %84, i64* @socks_socket, align 8
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %45
  %87 = load i64, i64* %5, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @net_enabled, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = call i32 (...) @NET_OpenIP()
  %96 = call i32 (...) @NET_SetMulticast6()
  br label %97

97:                                               ; preds = %94, %89
  br label %98

98:                                               ; preds = %19, %97, %86
  ret void
}

declare dso_local i64 @NET_GetCvars(...) #1

declare dso_local i32 @closesocket(i64) #1

declare dso_local i32 @NET_OpenIP(...) #1

declare dso_local i32 @NET_SetMulticast6(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
