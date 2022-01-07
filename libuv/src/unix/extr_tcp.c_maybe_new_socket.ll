; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_tcp.c_maybe_new_socket.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_tcp.c_maybe_new_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i64 }
%struct.sockaddr_in = type { i64 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@UV_HANDLE_BOUND = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i64)* @maybe_new_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_new_socket(%struct.TYPE_5__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr_storage, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @AF_UNSPEC, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = or i64 %17, %14
  store i64 %18, i64* %16, align 8
  store i32 0, i32* %4, align 4
  br label %99

19:                                               ; preds = %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = call i32 @uv__stream_fd(%struct.TYPE_5__* %20)
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %94

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @UV_HANDLE_BOUND, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %88

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UV_HANDLE_BOUND, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = or i64 %39, %36
  store i64 %40, i64* %38, align 8
  store i32 0, i32* %4, align 4
  br label %99

41:                                               ; preds = %28
  store i32 8, i32* %9, align 4
  %42 = call i32 @memset(%struct.sockaddr_storage* %8, i32 0, i32 8)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = call i32 @uv__stream_fd(%struct.TYPE_5__* %43)
  %45 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %46 = call i64 @getsockname(i32 %44, %struct.sockaddr* %45, i32* %9)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @UV__ERR(i32 %49)
  store i32 %50, i32* %4, align 4
  br label %99

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AF_INET6, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in6*
  %58 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56, %51
  %62 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AF_INET, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in*
  %68 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66, %56
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = or i64 %75, %72
  store i64 %76, i64* %74, align 8
  store i32 0, i32* %4, align 4
  br label %99

77:                                               ; preds = %66, %61
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = call i32 @uv__stream_fd(%struct.TYPE_5__* %78)
  %80 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @bind(i32 %79, %struct.sockaddr* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @errno, align 4
  %86 = call i32 @UV__ERR(i32 %85)
  store i32 %86, i32* %4, align 4
  br label %99

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %23
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = or i64 %92, %89
  store i64 %93, i64* %91, align 8
  store i32 0, i32* %4, align 4
  br label %99

94:                                               ; preds = %19
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @new_socket(%struct.TYPE_5__* %95, i32 %96, i64 %97)
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %94, %88, %84, %71, %48, %35, %13
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @uv__stream_fd(%struct.TYPE_5__*) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @new_socket(%struct.TYPE_5__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
