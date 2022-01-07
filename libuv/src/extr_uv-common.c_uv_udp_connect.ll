; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_uv-common.c_uv_udp_connect.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_uv-common.c_uv_udp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.sockaddr = type { i64 }

@UV_UDP = common dso_local global i64 0, align 8
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_HANDLE_UDP_CONNECTED = common dso_local global i32 0, align 4
@UV_ENOTCONN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@UV_EISCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_udp_connect(%struct.TYPE_5__* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @UV_UDP, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @UV_EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %60

14:                                               ; preds = %2
  %15 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %16 = icmp eq %struct.sockaddr* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @UV_HANDLE_UDP_CONNECTED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @UV_ENOTCONN, align 4
  store i32 %25, i32* %3, align 4
  br label %60

26:                                               ; preds = %17
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = call i32 @uv__udp_disconnect(%struct.TYPE_5__* %27)
  store i32 %28, i32* %3, align 4
  br label %60

29:                                               ; preds = %14
  %30 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AF_INET, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 4, i32* %6, align 4
  br label %46

36:                                               ; preds = %29
  %37 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %38 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_INET6, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 4, i32* %6, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @UV_EINVAL, align 4
  store i32 %44, i32* %3, align 4
  br label %60

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45, %35
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @UV_HANDLE_UDP_CONNECTED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @UV_EISCONN, align 4
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %46
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @uv__udp_connect(%struct.TYPE_5__* %56, %struct.sockaddr* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %55, %53, %43, %26, %24, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @uv__udp_disconnect(%struct.TYPE_5__*) #1

declare dso_local i32 @uv__udp_connect(%struct.TYPE_5__*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
