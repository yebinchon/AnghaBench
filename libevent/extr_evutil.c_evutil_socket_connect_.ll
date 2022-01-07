; ModuleID = '/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_socket_connect_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_socket_connect_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_socket_connect_(i64* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i64*, i64** %5, align 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SOCK_STREAM, align 4
  %18 = call i64 @socket(i32 %16, i32 %17, i32 0)
  %19 = load i64*, i64** %5, align 8
  store i64 %18, i64* %19, align 8
  %20 = icmp slt i64 %18, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %51

22:                                               ; preds = %13
  store i32 1, i32* %8, align 4
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @evutil_make_socket_nonblocking(i64 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %51

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @connect(i64 %31, %struct.sockaddr* %32, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @evutil_socket_geterror(i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @EVUTIL_ERR_CONNECT_RETRIABLE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %60

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @EVUTIL_ERR_CONNECT_REFUSED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 2, i32* %4, align 4
  br label %60

49:                                               ; preds = %44
  br label %51

50:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %60

51:                                               ; preds = %49, %27, %21
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i64*, i64** %5, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @evutil_closesocket(i64 %56)
  %58 = load i64*, i64** %5, align 8
  store i64 -1, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %51
  store i32 -1, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %50, %48, %43
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i64 @evutil_make_socket_nonblocking(i64) #1

declare dso_local i64 @connect(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @evutil_socket_geterror(i64) #1

declare dso_local i64 @EVUTIL_ERR_CONNECT_RETRIABLE(i32) #1

declare dso_local i64 @EVUTIL_ERR_CONNECT_REFUSED(i32) #1

declare dso_local i32 @evutil_closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
