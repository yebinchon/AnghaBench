; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_try_send.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_try_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.msghdr = type { i32, i32, %struct.iovec*, %struct.sockaddr* }
%struct.iovec = type { i32 }

@UV_EAGAIN = common dso_local global i32 0, align 4
@UV_HANDLE_UDP_CONNECTED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__udp_try_send(%struct.TYPE_6__* %0, i32* %1, i32 %2, %struct.sockaddr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.msghdr, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ugt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @UV_EAGAIN, align 4
  store i32 %24, i32* %6, align 4
  br label %94

25:                                               ; preds = %5
  %26 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %27 = icmp ne %struct.sockaddr* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @uv__udp_maybe_deferred_bind(%struct.TYPE_6__* %29, i32 %32, i32 0)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %94

38:                                               ; preds = %28
  br label %46

39:                                               ; preds = %25
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @UV_HANDLE_UDP_CONNECTED, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @assert(i32 %44)
  br label %46

46:                                               ; preds = %39, %38
  %47 = call i32 @memset(%struct.msghdr* %13, i32 0, i32 24)
  %48 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %49 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 3
  store %struct.sockaddr* %48, %struct.sockaddr** %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = bitcast i32* %52 to %struct.iovec*
  %54 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 2
  store %struct.iovec* %53, %struct.iovec** %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %70, %46
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sendmsg(i32 %61, %struct.msghdr* %13, i32 0)
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @EINTR, align 8
  %69 = icmp eq i64 %67, %68
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi i1 [ false, %63 ], [ %69, %66 ]
  br i1 %71, label %57, label %72

72:                                               ; preds = %70
  %73 = load i32, i32* %14, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load i64, i64* @errno, align 8
  %77 = load i64, i64* @EAGAIN, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* @errno, align 8
  %81 = load i64, i64* @EWOULDBLOCK, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* @errno, align 8
  %85 = load i64, i64* @ENOBUFS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %79, %75
  %88 = load i32, i32* @UV_EAGAIN, align 4
  store i32 %88, i32* %6, align 4
  br label %94

89:                                               ; preds = %83
  %90 = load i64, i64* @errno, align 8
  %91 = call i32 @UV__ERR(i64 %90)
  store i32 %91, i32* %6, align 4
  br label %94

92:                                               ; preds = %72
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %89, %87, %36, %23
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv__udp_maybe_deferred_bind(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @UV__ERR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
