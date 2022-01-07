; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_uv-common.c_uv__udp_check_before_send.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_uv-common.c_uv__udp_check_before_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.sockaddr = type { i64 }

@UV_UDP = common dso_local global i64 0, align 8
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_HANDLE_UDP_CONNECTED = common dso_local global i32 0, align 4
@UV_EISCONN = common dso_local global i32 0, align 4
@UV_EDESTADDRREQ = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@AF_UNIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__udp_check_before_send(%struct.TYPE_3__* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @UV_UDP, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @UV_EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %62

14:                                               ; preds = %2
  %15 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %16 = icmp ne %struct.sockaddr* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @UV_HANDLE_UDP_CONNECTED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @UV_EISCONN, align 4
  store i32 %25, i32* %3, align 4
  br label %62

26:                                               ; preds = %17, %14
  %27 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %28 = icmp eq %struct.sockaddr* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @UV_HANDLE_UDP_CONNECTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @UV_EDESTADDRREQ, align 4
  store i32 %37, i32* %3, align 4
  br label %62

38:                                               ; preds = %29, %26
  %39 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %40 = icmp ne %struct.sockaddr* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_INET, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 4, i32* %6, align 4
  br label %58

48:                                               ; preds = %41
  %49 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %50 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AF_INET6, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 4, i32* %6, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @UV_EINVAL, align 4
  store i32 %56, i32* %3, align 4
  br label %62

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %47
  br label %60

59:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %55, %36, %24, %12
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
