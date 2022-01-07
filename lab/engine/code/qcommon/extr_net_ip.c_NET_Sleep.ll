; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_Sleep.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_Sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@ip_socket = common dso_local global i64 0, align 8
@ip6_socket = common dso_local global i64 0, align 8
@SOCKET_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Warning: select() syscall failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NET_Sleep(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %10, %1
  %12 = call i32 @FD_ZERO(i32* %4)
  %13 = load i64, i64* @ip_socket, align 8
  %14 = load i64, i64* @INVALID_SOCKET, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i64, i64* @ip_socket, align 8
  %18 = call i32 @FD_SET(i64 %17, i32* %4)
  %19 = load i64, i64* @ip_socket, align 8
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = load i64, i64* @ip6_socket, align 8
  %22 = load i64, i64* @INVALID_SOCKET, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i64, i64* @ip6_socket, align 8
  %26 = call i32 @FD_SET(i64 %25, i32* %4)
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @INVALID_SOCKET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* @ip6_socket, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %24
  %35 = load i64, i64* @ip6_socket, align 8
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %34, %30
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32, i32* %2, align 4
  %39 = sdiv i32 %38, 1000
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %2, align 4
  %42 = srem i32 %41, 1000
  %43 = mul nsw i32 %42, 1000
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i32 @select(i64 %46, i32* %4, i32* null, i32* null, %struct.timeval* %3)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SOCKET_ERROR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = call i32 (...) @NET_ErrorString()
  %53 = call i32 @Com_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %60

54:                                               ; preds = %37
  %55 = load i32, i32* %5, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @NET_Event(i32* %4)
  br label %59

59:                                               ; preds = %57, %54
  br label %60

60:                                               ; preds = %59, %51
  ret void
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @NET_ErrorString(...) #1

declare dso_local i32 @NET_Event(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
